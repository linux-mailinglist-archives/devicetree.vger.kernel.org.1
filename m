Return-Path: <devicetree+bounces-185832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FE8AD95B1
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 21:40:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A49A1BC274E
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 19:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B8723816F;
	Fri, 13 Jun 2025 19:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IIXJrtQ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A547B3FE7
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 19:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749843608; cv=none; b=e+Rw6A4nmBosRSFAX5Psh4X9XJhHOQCoC4VxIOBa18W+6esHTsK5Ctk+uiFDIKPksyOX4kka3Yo1Ya4pbcxoMcsH+AIg2bKxn9Wj7PmKT2a+2zMrE4M0XAQ2873jY3mCs4iXZERwfbuT269K/nGBBiRB86EgmEaEjekbg8Lzf+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749843608; c=relaxed/simple;
	bh=0FggUIMfD6zhHJPNYJP/gAqlqm6i2zejkUvF1/Hoog0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=diew3OPaUyVXMfH1dVMQbb8r5yWTBwgZpp6qhaF7CgvrQ7YVv2eWYZOIqIlz4ww6seu4aQpiZtlfzB6C/Q/ew45jMtsrDqqhkiWyTUKsyW6Pt6q5xANwPcTYxb+j1O1pfXh1kKXOIWsfzYdrCtnI1vW6HfsfCoF7y/8wAnMMI/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IIXJrtQ5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55DJUBSJ001649
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 19:40:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rB0ONGeaUdElMIKUrVqxP8Fee1xezETZ53jbZgh2Jj0=; b=IIXJrtQ5+mmQwAmy
	cF2/6Dy7C/wk+xc+IxRNnNefck2g/qXK09m80AxfeZO05wGmKlgIbzwg+SQ7NfbV
	tmtuXglRQ/T+9JTxsI9jOPmhEzQAluPzGN/sysJwqYlpEh0prKM2JtWBAhLMUWUD
	ppL3kJiyqDwvGzdF+mpR38T3q84oxShLm3ektz7l3VPNjdKbue5n2m+iNwVse013
	SJLKfObUOV9n/Owm1HWqvpjlx3YReH1tiIjv4Ly05BSx1rEw/8zysa2PpQW5bNKo
	LaBIH3YeljBJmodSNowehF70qXEicDBLDPmdKqrh+Ak9LmR60SCcupuAB/H3jf/J
	B7eIJg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 478h8ks718-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 19:40:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb030f541bso5779566d6.1
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 12:40:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749843605; x=1750448405;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rB0ONGeaUdElMIKUrVqxP8Fee1xezETZ53jbZgh2Jj0=;
        b=Eq5JuvqFyB1KoAWRyNx0BqfZMui5brNFgKsWiUJ0ElDKjfRN3HJFK2bc1411jx0InO
         7FFD88jyiH5Xq8mWCSsSHrEz/WpGYuC3FK6bWaHhrg3fK7EdiNXKH4MtT2okGe79YzS2
         Ge/bjaTlMjlykabnJ8kANY3PgwPwJ/9XF3Ui2x37rlRheQ1Co7arkBoYcC9MysBe7BTf
         z2JdAO6xzuWnX+7eu9wqvV5ySN9AhzAlpkV1Hv+DsHYMBE2h9JGnSQmBzXZu30at80+i
         vv0r+1v8o1NJnfgCDwmEZQpj7Wb/RDUFY/mY9M9LxsIBzp5fU3DchcwrcrB/VbaKFXr2
         HuXA==
X-Forwarded-Encrypted: i=1; AJvYcCUGnUenNVTxGBNnrxbv5UsMgndP42DtPpE6i2QXpiXX1cEowICH5a6Betz4s9BPJgmjHyajE7zr/cv5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0sbdIRNKSKkUYSUOlSNw9VXj77cPy/G76Ntwj8B3LL5STxmLP
	829Ok4V2meIYGmZE4nOGwUlIVquDlf3D532Q2KbDyK3AK8YPlkXG1XsDteAstYEiPzJOfMG6MW1
	2cCNeRnSXrePEZ5UMH7HikXJyMpB5H37RU+4ceoraxjfzcJPOELSNj0ZZhCumy5WV
X-Gm-Gg: ASbGncsePxGZHCPaaB/kDRor5PFAx6ltG8AJ+y/8A8k104p1IQU7aem7/yHg8BrGc8A
	wkF/5pmFTkHdmuv1baGTY/vrtnw71AtvTufVqMTRtXqRITN/6TumTWQx4qUrAn7J6EhP9ssQbfn
	zRDObln9I4iO32CPoQ6QwojPsGQ1S19nXhlsRlxUbP/BycwulVWvXyksEXBM8PTLgr/xzBrjWPA
	izR70iAMBw4ahiUDABJb1cdasktZQhcFp4vqDWH9wPKFECLFMsmzGI5Bt3/YvPIbHgCeT8NvD6y
	NEl0VcQdp3jYWTk34PDykECDHh9c12A7Q5Av2DM7eUZWGhNslGkkyDUaRpO3Db0sBkexaQSR+yr
	okZM=
X-Received: by 2002:a05:6214:3d87:b0:6fa:be81:e18f with SMTP id 6a1803df08f44-6fb4725df27mr4267896d6.0.1749843604760;
        Fri, 13 Jun 2025 12:40:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlFqdrqF6v4tHYFVXi25gMIXToBhV8BbZ/c3hebkdS0kDw+l+EcZGQ9hHh0Jo075/pj3qaUg==
X-Received: by 2002:a05:6214:3d87:b0:6fa:be81:e18f with SMTP id 6a1803df08f44-6fb4725df27mr4267636d6.0.1749843604337;
        Fri, 13 Jun 2025 12:40:04 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-608b4ae33fcsm1585502a12.78.2025.06.13.12.40.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 12:40:03 -0700 (PDT)
Message-ID: <a033f565-96b0-48ba-b12e-8deee4691f72@oss.qualcomm.com>
Date: Fri, 13 Jun 2025 21:40:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: msm: Add eMMC support for qcs8300
To: Sayali Lokhande <quic_sayalil@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mmc-owner@vger.kernel.org
References: <20250612092146.5170-1-quic_sayalil@quicinc.com>
 <20250612092146.5170-2-quic_sayalil@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250612092146.5170-2-quic_sayalil@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: XWEUj4yWWqQqycdxhsuV0tRJy0X7fDUT
X-Proofpoint-GUID: XWEUj4yWWqQqycdxhsuV0tRJy0X7fDUT
X-Authority-Analysis: v=2.4 cv=Pp2TbxM3 c=1 sm=1 tr=0 ts=684c7e95 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=wwKwL4-ToxZHK94GjMkA:9
 a=6YsMbVLJVbuaDASO:21 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEzMDEzNiBTYWx0ZWRfXyviLZ/LWXQbn
 VN76R6PJgdCF2IUeWAJGtCMcJ1kvY518rdNlS0nCw40XahHfSxg9pGrydurfAk1FBMZ9inbWlK5
 GoXfwu8zSrqskNYqIGHndX+HDuazfEzMAMyXb8Aj++uRf5gpVkpYdHOovoQJQA4H1zCSSPudHqQ
 bHiaZP76nLaPOy78G1aEWcsY4XZu4dEdu0LdWbyUzf/As9aeDGWqepjV6ykHvgBsAB9IEDRV8SG
 l8kD02TFQw/rH49Jc3CGmPwJmhTtkCWeH5fFFMg5M2wtHamMaciJ34Q6so0/yGg31y2dUieINEt
 ODklH2TQS8UflNqwYYvedLVFcT7Bz0xwly316SxAxJR5RfA+GkA3Yr4o83k8z85bYcMNIXpquZU
 1KJGtqYOyqGkYKZffMXEC355/LP4N0Yx83jjKl7bNE65lGPGIUwiMoha/JhQ7EU6gjZ+6F3v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-13_02,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506130136

On 6/12/25 11:21 AM, Sayali Lokhande wrote:
> Add eMMC support for qcs8300 board.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> ---

[...]

> +		sdhc_1: mmc@87C4000 {
> +			compatible = "qcom,sdhci-msm-v5";

This needs a SoC-specific compatible and a corresponding dt-bindings
change (see other soc dtsi files, e.g. x1e80100.dtsi) 

> +			status = "disabled";
> +
> +			reg = <0x0 0x87C4000 0x0 0x1000>,
> +				<0x0 0x87C5000 0x0 0x1000>;

Please align the '<'s across this change

> +			reg-names = "hc", "cqhci";
> +
> +			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 521 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "hc_irq", "pwr_irq";
> +
> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> +					<&gcc GCC_SDCC1_APPS_CLK>,
> +					<&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "iface", "core", "xo";
> +			interconnects = <&aggre1_noc MASTER_SDC 0 &mc_virt SLAVE_EBI1 0>,

0 -> QCOM_ICC_TAG_ALWAYS on this path

> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDC1 0>;

0 -> QCOM_ICC_TAG_ACTIVE_ONLY on this path

> +			interconnect-names = "sdhc-ddr","cpu-sdhc";

one per line, please, also change-wide

Konrad



