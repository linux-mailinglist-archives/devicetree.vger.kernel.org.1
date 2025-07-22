Return-Path: <devicetree+bounces-198453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A14B0D0E8
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 06:40:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37E161AA1A4D
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 04:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C034228BAB0;
	Tue, 22 Jul 2025 04:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IFc8kYO+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3432E136658
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 04:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753159238; cv=none; b=RMSTXFMrweh3kf0wMXlnsSkkYsW95PDb0XzUqXsdEv3ORWRaKUA24Qx3lOAdZG5/I4AoPUDUJYiNpMERDrMCGZ/+uMQveGmfXc3KeFPOsItQ2W69lRdod5Xs5TbfmluqZpsjPcP5RT5GvfEIxzmUY0RD3ldV87FmnCUe557GPCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753159238; c=relaxed/simple;
	bh=DcWnCV5wiDFMtlUyE+DQhJbXPHzzcnoo0XyLl4KiE/w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K1HGySa3ansSqzKZ74/BATxnga1ZoNZVsniA3BEx5jyTKcaERLwtxfPB8mKLTGoA87Nh+PtRxaHpJBWYwJ1YqcmeqI4YLDgd1DemY/E0PZWAj24q8vScHb09bPNBZjIN/boFaLDUCb0dVVvFraXGtGI/RXCPV8C+lqyacOEW9gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IFc8kYO+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LIe2Gc015134
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 04:40:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QcTGOBXUA+STk52mHs0W4PauDtLBRWn0+OXc0q8RYuI=; b=IFc8kYO+nhkzRTcP
	awect8oHXP0U/GDih52NV7CPNIpPNbBkERPbpHB1s61G6FfD2ExRFdytmIh6Q71P
	cMXk28h6Mm4mg+miGb4f4OY9k6RPlw+0mS3zuEYivF5KbJ18HWuBIT5JwHpLw7dF
	07sR39aZLa6RpLhFkaVL+Nw8lYfuWR9BuA3gmlSWG9K4FC+BRHXDY9DMCvm1S580
	++eXtMmjupA7HPhNWcwPvN5ax9uHhudOpouwmbKubs0BI1AZKKYZhmHZPNQxoDiD
	CfTmQ0Vse1I2V/cL974KZXj1rIXm4ag9pKTDYpBJmCQmU9uzvlARyT+8JHLw+W4i
	hHMtQw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4804n9xeeh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 04:40:36 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-748e1e474f8so7239728b3a.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 21:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753159235; x=1753764035;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QcTGOBXUA+STk52mHs0W4PauDtLBRWn0+OXc0q8RYuI=;
        b=MDBIbWtFmt3fpIlt8GENtYrHLGVG+N928W6oWU2lTAnKtvQMJ3arZg7KFjbTM7l8gU
         62Gw+mCqvhudFdm80WKv24o5udmIw6giW5raQaNeJRsQ7hPjqETuj0UIs1Vxmk8hLpdA
         abiwi0YsF0emCo7bJWCbFrT37Aq1UXp6BDokMW1URrmcVHfwLhl5jObqhGLdeaUu9sUZ
         QM9kRA0AlaxcmtN5C551V2Vkwe1/FNLWSs23jJLM+/Ge6q1b8hIcyPoGBF3Rmm3iNzGA
         29ljPudrJ0JonyVvhcCRyg4RxNMeJ9ZG2Nh+eax3gieO6wdPsdr53Wv7mZDhsVwK4U9P
         aoQw==
X-Forwarded-Encrypted: i=1; AJvYcCWgblTQsCGxDkCH1RcKq7qXZ6yQGBpC/UkQek3z7HMveop4QheLfr5in7Ymz05Hergrpnuc4hB5408y@vger.kernel.org
X-Gm-Message-State: AOJu0YzHH6TQlYBdxuTfO46d9lyUg6pD/wqaUx0UWZzjQU5bYwN259vz
	BL5T1TSH6MlMojwKSlEzA4Z3WmfvcvSSZRVwrF13G/JsQNTJiZSKhjRI+si9jIz8/SkaaLZKD37
	OIgJfZXQkLrL035rJRf5ORot6UluRmnOtpXxVLP4ZFc1sVjHz4/F3ri21NWjqpfCF
X-Gm-Gg: ASbGncs+hNPgr7W2cme+ao+wg7QIeq0hSiV1bAPNHay2v/EddaCAFlCg7myKeXbx+fu
	Hgi4otzm8Q9JBVsRmYqgS0vtQSjfA3kZck6L+d9qOIY/e+jFgnwuZBJDF9PgDo6AF2aw3bDZ2zg
	giNRY51CPNAXV+6kILfyaXAzUulRCQblz0M5L8X4JMH510uukc8QVDrxKiRvulsM6l/y4Feo1WY
	jzoEoxtXJdQqacwxw/zkPuveT2lVpDqgh+iKI8WB6Vlpta0PMZ409QouC6WCI7oAT0lWwIPlkc4
	j0yiAGqMdVPReyAmut9RepEjXRw0H7rfOZuZvqO/QceecqsDBMFRrWprauJvLu9XygTDKU6rGUD
	wz4h+AbN7qhC337YNPQ==
X-Received: by 2002:a05:6a00:2189:b0:736:31cf:2590 with SMTP id d2e1a72fcca58-75724876a95mr27257782b3a.16.1753159235201;
        Mon, 21 Jul 2025 21:40:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1twrNaoE58MjndE1bdJRlSy7dI5BpM3+Jd8iUPOsl/CmInJrgSot5/C3EE7tyMWUpjbzqFw==
X-Received: by 2002:a05:6a00:2189:b0:736:31cf:2590 with SMTP id d2e1a72fcca58-75724876a95mr27257748b3a.16.1753159234693;
        Mon, 21 Jul 2025 21:40:34 -0700 (PDT)
Received: from [10.110.120.151] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759c84e20b7sm6725618b3a.28.2025.07.21.21.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 21:40:34 -0700 (PDT)
Message-ID: <0b595166-d3b5-4b01-b8cd-ba9711c88f30@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 12:40:26 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
 <20250718081718.390790-4-ziyue.zhang@oss.qualcomm.com>
 <aHobmsHTjyJVUtFj@hovoldconsulting.com>
 <86e14d55-8e96-4a2d-a9e8-a52f0de9dffd@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <86e14d55-8e96-4a2d-a9e8-a52f0de9dffd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ogVkldb4iSEvg32j8SO8CakvSWjx1kZo
X-Proofpoint-ORIG-GUID: ogVkldb4iSEvg32j8SO8CakvSWjx1kZo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDAzNSBTYWx0ZWRfX6a+anUKLeifG
 jpuYfminEzTSYHI5aFURiFoCrxh0DFJNuScMyaJ3f/+8X/s+WfsBdd6p43WoRJVo9UrTqIIgkPK
 U/yp6D8EjkLU1qnAxhBtN82CSSdi2xYbKBAJEglRWfEx+j2yZZS8eJlM9RNY7gDJVcuqWzxDsQ6
 3OpuUIsJPkyaUcHx5c/ux8+XXpJgglinlPt8QqhmjwlwoEZP47EsOu2jIXg9yL2jSyo8wvOsiah
 s2UH+Etm3Nqc7yEeHrfKgjTn9e6ZGVMzabj80Pji/Kv0Oe3D2h8+ZuDCDFtaN/sGF3THvTDbOp7
 Xw7gPM3GrHlPEqIiFBQYsBx0cHcarmBZFIDGiIimaSNUSrc+wkntaSvofEqGsy5l3z5QycS+NK2
 MosJojJbliB6QwJJsr/Cobi3Kg/nhxLUYJFmX+akQedl0OLs1tYhY0IPiVyqbM+BJQK+6mDl
X-Authority-Analysis: v=2.4 cv=DoFW+H/+ c=1 sm=1 tr=0 ts=687f1644 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=_GfwqhGknvAR8v4wHWsA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_05,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 mlxscore=0 mlxlogscore=999
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220035


On 7/18/2025 6:53 PM, Konrad Dybcio wrote:
> On 7/18/25 12:02 PM, Johan Hovold wrote:
>> On Fri, Jul 18, 2025 at 04:17:17PM +0800, Ziyue Zhang wrote:
>>> gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
>>> pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
>>> replace it with gcc_phy_aux_clk.
>> Expanding on why this is a correct change would be good since this does
>> not yet seem to have been fully resolved:
>>
>> 	https://lore.kernel.org/lkml/98088092-1987-41cc-ab70-c9a5d3fdbb41@oss.qualcomm.com/
> I dug out some deep memories and recalled that _PHY_AUX_CLK was
> necessary on x1e for the Gen4 PHY to initialize properly. This
> can be easily reproduced:
>
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index a9a7bb676c6f..d5ef6bef2b23 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3312,7 +3312,7 @@ pcie3_phy: phy@1be0000 {
>                          compatible = "qcom,x1e80100-qmp-gen4x8-pcie-phy";
>                          reg = <0 0x01be0000 0 0x10000>;
>   
> -                       clocks = <&gcc GCC_PCIE_3_PHY_AUX_CLK>,
> +                       clocks = <&gcc GCC_PCIE_3_AUX_CLK>,
>                                   <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
>                                   <&tcsr TCSR_PCIE_8L_CLKREF_EN>,
>                                   <&gcc GCC_PCIE_3_PHY_RCHNG_CLK>,
>
> ==>
> [    6.967231] qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
> [    6.974462] phy phy-1be0000.phy.0: phy poweron failed --> -110
>
> And the (non-PHY_)AUX_CLK is necessary for at least one of them, as
> removing it causes a crash on boot
>
> Konrad

