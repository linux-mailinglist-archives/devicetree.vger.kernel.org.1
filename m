Return-Path: <devicetree+bounces-218404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F13B7F7A9
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:44:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4055D7BF0BD
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169EE3161A7;
	Wed, 17 Sep 2025 13:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Axf5Qmmk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA71316193
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116475; cv=none; b=AUi+1URZGluElmDniRU1h6kl7iHJpWrFmC9nNYkRlZI5SuDowI2nybJgac948ZW+dAHGo/bmRfOmpDQMXdmzVKFKrdfh9vgQ0bf0EOnzgwQmLeCVRwmzAT2VlusroDlygUtc/gUm7PVmjz6UpX03NrtluCR/J3QM1WQ1S+dfwKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116475; c=relaxed/simple;
	bh=g0He+fScWmFw3Wrgr6o24cjCzpRTesI9T42kVWMJSnI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WBRPryIc2xhSNzOS3IooOBsLEmP+/4r4nPjcW55W6V3rtaOlKq9/Zu7sUMuWcEeAW2pBb0wp9AxXAjEWWBM+f+ljdYk9ix2KM/yCbOKtDUL8Xelh8j2u5B5H8IgL8iQVLSfLN6GYtZtA+0EBs6ExiNrQwT4ZjsE0wRP7S3bCNeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Axf5Qmmk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XbNq010757
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:41:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2alquu6If2SsvZ4fYTINgicB7yPUpfZ+7K13zW+7ZVU=; b=Axf5Qmmkeo9hEM+P
	uyxbaSc1R9Vztwualh5MCCoa2Nn3SZZm2/Nmbdv84VF2ZFeDiebbgkNpDL9TRJ1H
	leKghxxHoyjtMCGOllQmKAFGyoeAUtROurE3cJdzgQwle94b9G3+shrS0bwMU3J+
	I9W9PJ+FE0Yq7+jPGtxMAfLan8B4cG6PEh7LMsoY6dq5CE2B8XCkJJSer/FK6YyC
	gOAHUVHt9Tl9F4q4etkAfmil3OeeJF5F74/F2vxtc07Qo6ikA5Y1zyOZxzet5bFT
	3sLXHxKXNBLlB7Rfl2auruqPaN5v9SRPytgQXxDjQrL7ByzL+D656JKiPJLkhj/c
	QqAVzw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxxth6e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:41:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-81678866c0cso1343575485a.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:41:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116467; x=1758721267;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2alquu6If2SsvZ4fYTINgicB7yPUpfZ+7K13zW+7ZVU=;
        b=Mbwp6OrA+UqTZnmGjk+vNwkD4VGoxkGUP+uXA/NOOJC70AemosS/5cISzaJiD2Qsxd
         Az7/we2hPeY70O6UKBwBMPapnbbyz2soMvuqQUqrR+q2tFNGuiW6Z54iflJcbyI542x/
         9U9xaPIVbRo6098GSwwo4WyEVu2u3vCuAK6PEbH0+MCmb/I+rL65jslv4Zv52oQVtsBe
         pjEBQOnN+IGpMLxVdi38d6rVYbq1p66l+fi6v/8HdWoFnaAkbmw11ve7YSBcIps2v8d+
         Rhv1Cfw0Ctxx1RVw55AVQ518zu1x6X2dQl0yO9XnbcuFjJ7gjz1MY0xwG5R+djTDZPbM
         /eSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsdqJt70hcxdwTgcWRgWOcd1zCCuoS4lXj0+mUdzN1eswiPYcyiDtJBY4ZybZByLkkeE9F4Csd2tMr@vger.kernel.org
X-Gm-Message-State: AOJu0YyKJc6LdZzyUTiz4yzL5ht6H3TTGC2JHmTNs7cCiQjrs74M1kGb
	gOPo8zgu9eaadtIoIxdYiNUW3g8OG68E7TVW8YEv/6/u+vMvi4VQ4yrMuGgGA6MQRKjM+MmMd5v
	utLW6GDRpzLRyNUbsXSUE2l+xD8rdJiiuYKDxR+FT9ITgk17Z4Wun4tyUXp8rnuZi
X-Gm-Gg: ASbGnctIG8uSkppVEPpRjX3Ia1zPNTsTD/+4gRt5brHb9JvKCGy170gL4CO5xqPA59p
	6L/S6uyPErF9OcSwBgG2fZk4m9REM4OTwvMVPHi8Xb4p0mZ5BCUturuPOnB2K3MCz9pPbAYXLyG
	wkICA2R+D/VLjAIg3a2gOJFQufWW76p/GMfAlnphygCn0lwEWgyBjHLU64hnBrUH/crEPOwO9GC
	1GOqBE0tY4a5udCh6L79nsPHCMPCJxK+CPrAYY+K+79pb/NcX+25toB3hqtvYlW4u5xCMIF0pb9
	XLXYgsFfcizL/lyZ9M0g2CL4m0TpZmDiwgNrsT21IIT4Xvn4utM+nbJ6qNjtF/S884rNe7e+WaO
	ZHbPfgpqlkLiMaBaNpQsGGUPLdhXg+onUv4WVcCkaFwdVeN9/VmCb
X-Received: by 2002:a05:6214:4892:b0:791:34a5:8682 with SMTP id 6a1803df08f44-79134a587d7mr2378846d6.38.1758116466974;
        Wed, 17 Sep 2025 06:41:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGG8CjJ+HmCrpSHuGNrLJMUXXobGCkzRxl+dlfY1SXW04kxl2vskOrhELTFh5H9YnapKZMXaw==
X-Received: by 2002:a05:6214:4892:b0:791:34a5:8682 with SMTP id 6a1803df08f44-79134a587d7mr2378216d6.38.1758116466202;
        Wed, 17 Sep 2025 06:41:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f15a5846asm42557711fa.5.2025.09.17.06.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 06:41:05 -0700 (PDT)
Date: Wed, 17 Sep 2025 16:41:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v12 2/3] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Message-ID: <gpnnlwwvgip7cew4y7jfzzt2y532bw5xdabud5ulntz6hvp6g6@rvscoeoyeb43>
References: <20250917-hamoa_initial-v12-0-4ed39d17dfc5@oss.qualcomm.com>
 <20250917-hamoa_initial-v12-2-4ed39d17dfc5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250917-hamoa_initial-v12-2-4ed39d17dfc5@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX7ecdONsKV4oj
 lawr7+CPclLAbwYE4pa6oCjzID6jfMi4eV0ZXjYEawdJfz+KGz678jyhdlcz/ltRqXVKviXw6OO
 z7Q1zyviEKzgoaLGrfOLebS8PwqbUnWgAOtHzfrVXnOO4W62R0tn/1kI7fWLFalIDTeqMAviOzD
 iy9I3GWSToSsK80eYeMq2VDo45W4xE5pY2WO/+l/xy50Upvnw0aqqNLE7YiCEOIbWIWgRHPPydm
 p/Ql4byGwwevAcIPUUxdXP4jC5BQOSQEr3O1TuNRd7XDS2d4cbRqJuie6z+lfEtZZFhtJGM3QpH
 97ItlO6wMM1jz64h8ysWjrIydqLOchuWoo9Mg2x9g7TsFszOXZeFy/R47Kc7NKlRP6/bJ31/NV+
 bcAQO/61
X-Proofpoint-ORIG-GUID: ms2nDE_pmWJAIN9nIqd4m2aLb9HdmWFP
X-Authority-Analysis: v=2.4 cv=KJZaDEFo c=1 sm=1 tr=0 ts=68caba74 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=PhgHo22kut4TJJxNvVMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ms2nDE_pmWJAIN9nIqd4m2aLb9HdmWFP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On Wed, Sep 17, 2025 at 10:58:59AM +0800, Yijie Yang wrote:
> The HAMOA-IOT-SOM is a compact computing module that integrates a System
> on Chip (SoC) — specifically the x1e80100 — along with essential
> components optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> Make the following peripherals on the SOM enabled:
> - Regulators on the SOM
> - Reserved memory regions
> - PCIe6a and its PHY
> - PCIe4 and its PHY
> - USB0 through USB6 and their PHYs
> - ADSP, CDSP
> - Graphic
> - Video
> 
> Written in collaboration with Yingying Tang (PCIe4)
> <quic_yintang@quicinc.com> and Wangao Wang (Video)
> <quic_wangaow@quicinc.com>.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 619 ++++++++++++++++++++++++++++
>  1 file changed, 619 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

