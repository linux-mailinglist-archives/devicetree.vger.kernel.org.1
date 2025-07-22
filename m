Return-Path: <devicetree+bounces-198458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6382B0D11E
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:13:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 981E01891C40
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 05:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43A528B7C2;
	Tue, 22 Jul 2025 05:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VnmMUUc9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A941E522
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753161227; cv=none; b=uKQDm7g0wxMkQYgBf7DU9KEjuFyeulHpKvr0VYvVvAEgCNYthetFZVSKXKsMk2KfNvLBu8R36nVDF3yK2D7bFVGusGXgYPaxga3XQTGUvwLKzCv1RTNm8pHMivEBfxC0VsgIXqF9d2+n2iOoQInZGn/ueeTp0XtJOsM4RkfMDnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753161227; c=relaxed/simple;
	bh=SX0zAXf2tbGFxsz/BNSsiSjvj/tgQ5Vx0HisWjoxfC8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Du3T4Uf2uEvc1tGgGfRIPl3Bvx2LjqFs4+n2yTvl/uI6aynbyeXHSGNmK4dK9LeOq69lYREEitLAO3Wh4FGC0FRna65tOzm6Yg52C/dFm6zVDQCr27nSY1HDpjTT9tveVDi9+IsfWbUtC6Xe+eUZGACELL0XAstpZGExJUZ/ZEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VnmMUUc9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LIgcNS015640
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:13:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z34TxU6fYQCKQc+baHKHcHj+cYrndlzHUSD8HFvi1b4=; b=VnmMUUc9K5t8rfUV
	5HrKEcBgn0nu9plJ5pCimjapo8/XZeHHwcjwLwReZ+9JVUdxc0DVHz5EDYLsP0GW
	q+oRSmJ4B4nhBPh6cRU5NugIHjkh5GagJgV7IqVtTOhpRpymD7iOKMRAeJF2QA77
	1FWG1SRPvwL6kYwtiIoJ/O3xh0Cd4K2t+Jwud1PmBn686kdnFTb3ZgUsoGnEpAs8
	/yzowqMOmIZh8BqQX9IpP8SmcJIXqjUVoearaSMjgOH3GpKx46k13av4PtsMHBCv
	dH//q0zD7WV7NnlPX7SR3V5mTMY7sJaHewKbAjzDRtJBVpFLGLnuNHn4A5QEhz5S
	zVR7cw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6w19cu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:13:44 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-31327b2f8e4so4550496a91.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 22:13:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753161223; x=1753766023;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z34TxU6fYQCKQc+baHKHcHj+cYrndlzHUSD8HFvi1b4=;
        b=fBCmJY10lAH+hTX8Mz4aDIc3G1zdnytleToRukt3gKFkglBL5SYBcaRetBUpGR74zw
         SSRT03Iy7as8sgw6uELtjCdaBC7Rn77szpLBtiqpbzKjTESY7wkAKhmI3geXfjL6qHu+
         xrkxR9dXPk3E/v0O/j9ZK4Q/YJXHAFQ+oPUgXvH4pfctWeNdwVx9zMvjE44que+RI3B1
         cOu/VmWqC0eV7iUnD+ZzKeABWURx+lka9Q3P6XAzjCBJOP9/yEXPTHzwPxWlHjw65VW9
         jD4H1/Hhe8F9Bjxvf26FfrK7P9OWcEd+CokjKo3jm1VfR+0eblt6iWBDgl6n4Xw1Rj+1
         DIJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWHjHWaIGJxqdHPG/IQTc9xEsZoUOLFG3iPuun3gdplX+nJWejSC03HfTCrnR20ucFJf4Re+ARGYC8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9GRyvzWTHyNX1ifAt6mBCdSx7Oo+g0CcNqy9Z4z22pqpdLBX0
	GzDePnQeCm99XEkUWrh6wOy7URfi/hNupVYxprhvsID3PuBETZH5FFIECI/hmeX2rmLNZR9Kv1m
	KC9zdNcC+G3zt3nkVR01uV7kSovqdTz3NT3ynpId7tvNcIA8dSEPoVHHEv9g5ibma
X-Gm-Gg: ASbGnctQNlaEf+q96VhBoQC2rTzICdTz1xi9fteZu9k8IFlvGZtWvEsY1vrJXWnFSD9
	BJXmNhksKAMzge0xi+JiDTMd2EUs0NdbotaGDk3w6oCKJyoKOfCGy3ZgAcGdtEX5YyEQwZ5/Get
	Hyqsqpx2GS6GlUVnyvXFq3RYKtCqMHe8hYNSMFAapJtjzqNs9uOl+As3PnreDT+koJpsMONRfPk
	DUPB80+fB6ThQ5AjQEE3H47vOXwNYag7INHMTiB10JWMP2PnQ1Vpso8Fz5WB0W+DIdN9DZsdEFa
	eTkD6pBKCAr8gb61ixE4sU6tvO2MX7wlAJpX0bkWLBKR9cYhBDOGGOogTnXbKSQLHXd0lg08Id/
	nZ7U5GhAuslqzlSevmw==
X-Received: by 2002:a17:90b:514d:b0:311:b413:f5e1 with SMTP id 98e67ed59e1d1-31c9f45b1admr28828728a91.32.1753161223347;
        Mon, 21 Jul 2025 22:13:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYhGavDIomiy1NdWktoEpkCMViHWPVGYxxFEsASyjKD6sDrdiu2WKJkwtvY2LAXOjFjGQ2tQ==
X-Received: by 2002:a17:90b:514d:b0:311:b413:f5e1 with SMTP id 98e67ed59e1d1-31c9f45b1admr28828682a91.32.1753161222854;
        Mon, 21 Jul 2025 22:13:42 -0700 (PDT)
Received: from [10.110.120.151] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45083sm7115312a91.2.2025.07.21.22.13.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 22:13:42 -0700 (PDT)
Message-ID: <c7342ed4-5705-4206-8999-e11d13bea1f2@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 13:13:34 +0800
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
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=687f1e08 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=MOqbobo4jd3P9B9bkYgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA0MCBTYWx0ZWRfX4JCIVOVPN/kz
 dR6ykYsaOCgx/ZBzO8zWkEJIUz1AF3kBpNda1WI1/Cu+5Hg2UJovkRlNPhLVZ7lROdYByFqiisC
 vU24/u3qssiRmuaqbwnQ3I7rCwZZ5e2AAY69Hcq8FsnayrTsPlKvP6PmfKyT2GJk+Nl5FktZtWm
 fgU/psQgXhApH1nbp9+nnt+riRNtA/IdXyTx61jCghTEmcy/QqDP/okwdgMQtSeDBTaelBvbvOm
 aCA2+wgDEXdJytvWg0JFgadPk0zLXni1AeRI0Gu8yEOZkyKryANP7z46Zyvj2A4h1glRRyuUk4K
 QHxz6K/6JG2t6QorQN1oxmaXz3gEMve5cvK6EY3q9wVsG98+TjczcqVD2FZ9vzU4wClBocaW73L
 72f8Ou1aS4iqX0S4u8ciBlN7FYiYnhgNgZsqOn7vkpbJfqrsyppKe48HfCtgqPgCTs4UzCDU
X-Proofpoint-ORIG-GUID: UgLZWefDisPPB7yNAVSTX6Cy_3z1wQ7r
X-Proofpoint-GUID: UgLZWefDisPPB7yNAVSTX6Cy_3z1wQ7r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220040


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
Hi Konrad, Johan

I tried remove PHY_AUX_CLK in sa8775p platform like this, and
it will cause a crash on boot. And I checked the clock documentation
for sa8775p and found that the PHY_AUX_CLK  is also required.

The changes are as follows:
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -7887,7 +7887,7 @@ pcie1_phy: phy@1c14000 {
                 compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
                 reg = <0x0 0x1c14000 0x0 0x4000>;

-               clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
+               clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
                          <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
                          <&gcc GCC_PCIE_CLKREF_EN>,
                          <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,

BRs
Ziyue

