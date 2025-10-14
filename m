Return-Path: <devicetree+bounces-226475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CE3BD8FF4
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 13:26:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B3E53A91D6
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 11:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 108AA30C36B;
	Tue, 14 Oct 2025 11:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f6qqLXBl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AB830BF70
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 11:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760441156; cv=none; b=VxZDoOI/F5EgsSJxaLHi1PxzZR2s4F6FLSSJlSOMNfIsRO0kcYKMCkmg25YwUI+kPzikLvM2R5tgpIAOIVV3IHxOQAvRgxVZpr39l251bEiquYhyI8L/4pTjgZ4ZaaXjd0O6D2+tQ2g5Va5y1g0l/WQWqnMRtT9kUZPfIc+cpj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760441156; c=relaxed/simple;
	bh=j686w3OYPk5TRiSL4y3TUeaPyqS51Ap3zi6yDNE7Sl4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V6v5lhVdqeYgQDT26zSny9Ff5X9l67XJwBHSL0kfUzJnw/6w/rT9F7Ivuotd6fH6zmTv1VeQyb/KWTyD62jAnckeEeZlXcQOnN5ua9F6iTbNycl42wkP1FyB7nTYeP0lyp4SxyG7S2bu8uo7o6C5Afsa16NUcebS9jaR8Ib6b+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f6qqLXBl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87J0S025666
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 11:25:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lB6sFQ3LeiBx00eAv9moG4oCFwLs4x2w8B2DPiD6Hkg=; b=f6qqLXBl9CpFDkBF
	RhNN9adguwXk6DD/nBJfQGSnXfPCr9mfRDJwKmkOhwBzumRbrjFW/5RE2K7PyivO
	dCCidrcSqjxY3vqARhVOCnUz6gX0E/O1L0NECosMXb7rcItIy3dBCoqzVZnsTY1x
	oDMNmidK7J2AsHzNUcwO7Dpx7hA8vRQM8LZ/NgmZKZeJ+xva3z5ZXOAFkeGxlXYg
	5aKCJcyu60uoIOxpkxW7wbWO3f/M53rdEcnNpqQU1HWiprzTtNXPoQ/vuwIwoih7
	h5dPeRLu3xC+u3ZUcO+7XsvFw49cRwhg4p/opOOzrl57jtWWn06MMe+3iBes2Fhr
	RAVNZg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdg03yd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 11:25:54 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3327e438680so1497003a91.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:25:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760441154; x=1761045954;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lB6sFQ3LeiBx00eAv9moG4oCFwLs4x2w8B2DPiD6Hkg=;
        b=k5GcF3KTQVO1B1mCBMkQNBnuqUwMgbCkr3GXcE1WOtk60UUnaqdRCkKMsCovgltDnZ
         tKKtalf4e61d3XtsNtu7v2+6sD7jbLJbDvE8vqyQSfYuewPxxGTWsQLRNomtQIz4L0qe
         b+T+Rvlx1yBMF0CIQGjGvUISPJ7FLG83S5VKTlXEdPX9SpdMKug1Wa2nqjttH3dxULjY
         d0LH/BWLmUmtj060z84JlBFYWLLC4CztGCRAJqFYCFA88r6pAODAfB9jim2HdIQHQiHu
         UoB0YPz1fERV0bh9+SmRSPkbWPLkLC87Jg8Q/DLCNO7k+4LdKBF7KmGzuZTfxaq44eSi
         oM/w==
X-Forwarded-Encrypted: i=1; AJvYcCWo/+ytcDTtJfJdRcvQK4bVRrGOMLMxJR9FkGzJSYaN9ZJbIceDg6JtgeWmglGbrZTw08TQIi7+Zar3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9L/FVvQC9pWLPueNu51MRbxPslSlP3q5RX+BY584SzNGL16h/
	k/8JJMnL1H3hpcwO7m83gvvYU5kcQtomY7Nac7gSIA625m6eRwKf6lU8AKixlSyNcoOio5xo223
	ekjbucNER162KpZ1jA8XFU/KgZe1up4g6/crUFomzsHPBdJQRfR1eNCQ2voRIanmN
X-Gm-Gg: ASbGncu1Sxp+it6FNZjRgjf3xfjVoAw72y1+F+4hQRuZsbWHtS9kklBA5jM5RLM7Ylk
	cmuQnBFelRQ81kWsIZzVYr23Uho7viHUB3+ZJevwH7+sI1cdsTZkOmWeL4xmNNDINpNZYMdhEh1
	m8AGhaUa3kvxZUWnxOQpJZgr/QoSkAkKbMP4QGqLeRvDsTAtwYhkrfxwL1h61DjYEoJi0sCLiQr
	akhWI8hfLlFJ/RX7MAFgno87aWvOeaNFY8l7q8jOV31DqhlYox1PR6g25hGcB5uZD2huP5nrQp8
	8hXxLHh2ylIe8dqj60x8pyVEWgw/dMqVS7RshdBceZpW+KQcQE9b7VNeft17MprIOWh5Hoe51YE
	529k5LiY0WuPxTYksDl+907RcMbotPvfCqTY=
X-Received: by 2002:a17:90b:388a:b0:332:3ffe:4be5 with SMTP id 98e67ed59e1d1-33b513ae791mr16920102a91.7.1760441153623;
        Tue, 14 Oct 2025 04:25:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlyXxDUchBxkJ8hKzcSdS8zUzwWZdwgzzM7euiuaBwsEcgugKDNWgcZSO4YiCAcVeXe1f/pg==
X-Received: by 2002:a17:90b:388a:b0:332:3ffe:4be5 with SMTP id 98e67ed59e1d1-33b513ae791mr16920082a91.7.1760441153080;
        Tue, 14 Oct 2025 04:25:53 -0700 (PDT)
Received: from [10.133.33.159] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61b11ca9sm15658229a91.24.2025.10.14.04.25.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 04:25:52 -0700 (PDT)
Message-ID: <7277bc17-112b-4fc9-9099-243d216893d8@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 19:25:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: Enable DisplayPort on QCS615
 Ride platform
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20251014-add-displayport-support-to-qcs615-devicetree-v2-0-1209df74d410@oss.qualcomm.com>
 <20251014-add-displayport-support-to-qcs615-devicetree-v2-3-1209df74d410@oss.qualcomm.com>
 <kxwavurs7ebp5f22gxutvw4thwm24twqpahszhyxsodsikunja@7hl3y65ppqmo>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <kxwavurs7ebp5f22gxutvw4thwm24twqpahszhyxsodsikunja@7hl3y65ppqmo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX6Yt3hePjKne1
 /CDlHv77O8oXJXrKIM9NJHJL31CKXv5cgUFBZbsCYX2dk2r0H8wth1PJaqgM9X5v7YSNG+ORZje
 Py88csWnCNTndJxS4CZIOTjpylYuHnGlyjwh4FlDT4LrosrfLwqJHB0w82wa5nbSxUcYP/fjKNe
 hG5xM4bpgLtHUnSRJ2LsLCf4UUsQqtgrbht9ISOPNFZxIzwHT7B6yBHYmSFjSJ1S6TCUEdAmQR1
 jfKVa+BiQrlW39XdduaFDDHRrCfSkawyNOt1OW2siqsBsEZSyp14ci4AfzyA9nPGI94ONemK/3+
 EdVlPN60WsX+bkAuNZvc7NGI5fhjllSaVaYLU77PBIZGEo5jeOQkdaDIXqVAoEwIIcBPdIoB8sx
 mi8ETxtI3CYGAgSwUIoSEJI5lz88Gg==
X-Proofpoint-GUID: qSfnXrc1PsGUi251LYt87uD1hQsn5xKD
X-Proofpoint-ORIG-GUID: qSfnXrc1PsGUi251LYt87uD1hQsn5xKD
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ee3342 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=lUa4T_ycwPSD0wKDvOsA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025


On 10/14/2025 6:21 PM, Dmitry Baryshkov wrote:
> On Tue, Oct 14, 2025 at 05:42:12PM +0800, Xiangxu Yin via B4 Relay wrote:
>> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>
>> Add DP connector node and configure MDSS DisplayPort controller for
>> QCS615 Ride platform. Include lane mapping and PHY supply settings
>> to support DP output.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 31 +++++++++++++++++++++++++++++++
>>  1 file changed, 31 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> index 9ac1dd3483b56f9d1652f8a38f62d759efa92b6a..0b8bcabdd90a0820b1f9c85e43b78e40eb8a9a38 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> @@ -39,6 +39,20 @@ xo_board_clk: xo-board-clk {
>>  		};
>>  	};
>>  
>> +	dp0-connector {
>> +		compatible = "dp-connector";
>> +		label = "DP0";
>> +		type = "mini";
>> +
>> +		hpd-gpios = <&io_expander 8 GPIO_ACTIVE_HIGH>;
> Not the gpio102/ 103 / 104? Interesting.


Yes, on this platform the DP HPD signal is controlled by the pin controller
on the video-out sub-board, not by the TLMM on the SoC.


>> +
>> +		port {
>> +			dp0_connector_in: endpoint {
>> +				remote-endpoint = <&mdss_dp0_out>;
>> +			};
>> +		};
>> +	};
>> +
>>  	dp-dsi0-connector {
>>  		compatible = "dp-connector";
>>  		label = "DSI0";
>> @@ -423,6 +437,16 @@ &mdss {
>>  	status = "okay";
>>  };
>>  
>> +&mdss_dp0 {
>> +	status = "okay";
>> +};
>> +
>> +&mdss_dp0_out {
>> +	data-lanes = <3 2 0 1>;
> It's not a board peculiarity. All QCS615 / SM6150 devices are affected
> by this twist. Please move this to the SoC DT file.


Ok.


>> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000>;
>> +	remote-endpoint = <&dp0_connector_in>;
>> +};
>> +
>>  &mdss_dsi0 {
>>  	vdda-supply = <&vreg_l11a>;
>>  	status = "okay";
>> @@ -623,6 +647,13 @@ &usb_qmpphy {
>>  	status = "okay";
>>  };
>>  
>> +&usb_qmpphy_2 {
>> +	vdda-phy-supply = <&vreg_l5a>;
>> +	vdda-pll-supply = <&vreg_l12a>;
>> +
>> +	status = "okay";
>> +};
>> +
>>  &usb_1 {
>>  	status = "okay";
>>  };
>>
>> -- 
>> 2.34.1
>>
>>

