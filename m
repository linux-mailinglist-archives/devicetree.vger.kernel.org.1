Return-Path: <devicetree+bounces-271932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENvtEtieqmmjUgEAu9opvQ
	(envelope-from <devicetree+bounces-271932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:31:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A5321DF3E
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:31:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A573300C93E
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28B7D3446B7;
	Fri,  6 Mar 2026 09:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XvFbGcaF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="StO3NtFR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19F630E838
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772789189; cv=none; b=GaUaOtKpuCbnbMHnCOKrhjc3KZGRP9cvIe/l+8mpHgYUkn/deFI6/5lx4EUz9+RpUWNBI+lhj1H4gYTYxLr+h9iVk+iwJ57BGjbYxAPEHlvN+8oTZpAD0VIgc7mkKoXnuKc1wcyViTrTxDp90YbCvDeJI2zG0XTh66dJT0t3Hu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772789189; c=relaxed/simple;
	bh=1y38YLMBEBUyQCsZliHDOoYIS9y5JAIQa4Ppg7kB9gI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nIogybShWOvxN8v0s0IlFT5wSSOjPfnEA4zfEd1RBynS2H/2XiEjXMdZbQqJfQvaNXP1GKdVfQu129X9Cky9jpy6P0Am0SbzDTV656E6TB1hEOqti7NuVqrFb3dubwY/xtzgF7drp7htgEOSlcW1g5dI6YYX1+o+qiTj6M1gKws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XvFbGcaF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=StO3NtFR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264awTY3220640
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:26:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g9VGYfsml8rKqyXhc2CCewWm
	JFPq2+7E+oiIvjA17Xs=; b=XvFbGcaF99afGPblZDnMPe+e20y+n/j+SkT74IYi
	lln42UdAvgfOgXsSbZ6u7WffP2LNkCFGzxPb2ZgaXUsJLzsoEgYDSldN7P47F3hx
	ulWxTm6JaKnK3ti2Kk7QrhPbLy7UFPU1IYYrG3KdOVxGivKwYvphwFgAAmnpTwi6
	RG03NAyMwDglGqvCWX4apKJFp+NPUvqE3+mvmrtAQ9sxy8g9lggsG0h+FWY9rV0B
	QxvFj8J2YvaxzN+9iTUeNYpkBn/AaMt40/xljTkCdNDidrGkxuL5hcqmjdYfnvKH
	OLf9eyD8d5S4orG9OimtFsAmAUL2f+R+yLC3teEXlD/2mA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqf25tjsf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:26:27 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2bdc1b30ac8so69866620eec.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772789186; x=1773393986; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g9VGYfsml8rKqyXhc2CCewWmJFPq2+7E+oiIvjA17Xs=;
        b=StO3NtFR1Q/kmTrW6cVrTg++fLgQHfzzAMFb4eYd6iXrOn5yZpmjL3s34LeoJTjrnk
         jvLF+L5CRcpX+EzWn4fRm1NFtWW4Md7tN6Pj2s+pXg1bokV7C+lpYQWsMqCZSTZN9j34
         NB/UuPJjWPt7paQtaGnsVCzw9P0S4Jt4jfz8/Hj6UEeaoGadheb1Joxh77271dSGTxib
         9XIEBjSO1A0xPhJgKF0r6M9oTKwmwHgAB/LqjFv1eg8pBafavV/O9GQ3qTCTj/5P7pWH
         /HmOao3YTrXFQr9SUZVfIcBmi0ydKkbP4hiwPOu55cEJYd85Vu/e9vutSEpCfKZxKbwm
         w9ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772789186; x=1773393986;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g9VGYfsml8rKqyXhc2CCewWmJFPq2+7E+oiIvjA17Xs=;
        b=OOoWEFTy7uZ3whsOFKbsRvfYRakjIYOibMmkipXo8CMgNoH6lQuWOY9aXuYH/0fDQS
         QzPV+k6lG7mL+0C+tgtCurxKkWQn999TIvjLvzjRpuqGkj9cegE6RcMIBIw5nf67V6AY
         tapMw+E7zo6JUpdoGPXdWp1QEi4T/mTf2dknawMeYCmAIs5gVkIVoD13PLGnTPOSXuZv
         Xs7kTD7XpOHDo5GlJO4H8+V/rkvS88KpGJlbyMntWhyLXa1RT66829z/rZTZCBKMfia1
         euqjt+5BA8EjFSwmanPgqD4a9nKcep0qr3E8rTLVor/ZKOlGhPOIFj5f44ex6c3IJoLp
         v49w==
X-Forwarded-Encrypted: i=1; AJvYcCWvEIrn8D9LCSWjEMi9vl5OsMe3tVoX09v/rmON/S63/8Z8Qa2p3uf+R+5mnmVKlVBHZnCrKlklIuXI@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt1H1aHpnSS2CnOYz35D1gEAWsO8NITxov593mYWj7QjebBtiO
	v7GTLErUReJMLkgXHrsPk/hWyXI2cxdASXIzU6VLdw09s0UEF/k6Z4hGV2YzKmI3pYqSDQuDLUL
	k3VR0Y4UatF1Ewe1iZYaOxeR9eXzjSZ4L0zesG/SEZ9koCkMQvV8m1TlPD5F0yVtJ
X-Gm-Gg: ATEYQzzRGr2K50jUooccin00cduAW8TEYbRSGbWe60jXvfuQMjlhv/2+z/lnsuo9nwJ
	5rnZJgcC8I/zWaHP+PMz58ZycNX3ErFDaK+loLPt/jvd/mSusj8KRFsGQSM3p8q/a9cnAgPXqEY
	o2c9BP1ouSrzGFZcbbvKYFs0WVSuVeBtQhsn+wYoxswHeH18MAKpgRzn7zB9aUF/2qGZVFZaTV7
	SGLguymWfePs6Ft97SpQa3qQvgfIc41ErZ6s+Qs4eN90+0MJ3NwIOkd9TZujtKNVHy4kGJ4q5Xz
	RyPSofNj/re5fi+zbcXDD1CWuWlvVTpFtmRH+EhcFXZeuW6d4tZDsL9V2CJ5G9MdAB9cZdEcFkL
	dyT9WoIOyxB06dbBnDu4XE/IpupDxSNqIa6m3pFK8k+tdHBmtzEH05Fai0mHPl8OQyrwR
X-Received: by 2002:a05:7300:ed01:b0:2ba:a1f1:2879 with SMTP id 5a478bee46e88-2be4dfdd714mr611933eec.13.1772789186182;
        Fri, 06 Mar 2026 01:26:26 -0800 (PST)
X-Received: by 2002:a05:7300:ed01:b0:2ba:a1f1:2879 with SMTP id 5a478bee46e88-2be4dfdd714mr611922eec.13.1772789185594;
        Fri, 06 Mar 2026 01:26:25 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f96aec4sm857426eec.25.2026.03.06.01.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:26:25 -0800 (PST)
Date: Fri, 6 Mar 2026 01:26:23 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] phy: qcom: qmp-pcie: Add PCIe Gen5 8-lane
 bifurcation support for Glymur
Message-ID: <aaqdv7Zx5AODzg6P@hu-qianyu-lv.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <42a9dd4d-eb96-42c0-b836-dcd7cb9405ff@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <42a9dd4d-eb96-42c0-b836-dcd7cb9405ff@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: q0MNiAQ9Y5h_81mEttpsX-6j2NMYCObg
X-Authority-Analysis: v=2.4 cv=Uvdu9uwB c=1 sm=1 tr=0 ts=69aa9dc3 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=1-162AUNTb8mUwbcPr4A:9 a=CjuIK1q_8ugA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4OSBTYWx0ZWRfX33kC7F+8/hnN
 W4vFvtyDLPzh2+W18xz1NerACvkXRwFy8+vMA8UI74n4M7NNfPsIOLN59WkiusYyA/HanWKQYjN
 ZBhSrAsakID/yPb5zi8WYUdcupprn/O8mY+CGO52AoOPH/LXSZLrJSAHFSUqztXrupJ0Ye4muF2
 s0s1zpX4GwRBvGP3qYlQQwlpRiQKx1eS4guntJoUxEbt5oEYpcdp3YTR1N5QVWyV2aW7l4B7OK3
 ACpbHNnWVxZ/ttoX5dvfSzfPiO9nwAxYXJX5yfSt30g1W3XyFu+fPRpHeQ8c2agIrVKezngo712
 sgcgNaA7GClQC11n3lzhrPJOEQ/VDoABN+wdxfD74aN1V1Qnc5/BmfMjgZuXg+kmqeuNTvqVNrn
 JTC+UR6250NPg+zJ7Cg9fTbwItTcVDYrT/T4/lcqAaUHis75yhz1xTZBDNdhpA0SfApVL52X7S9
 yTdMFRLC5MZnG6pJSng==
X-Proofpoint-GUID: q0MNiAQ9Y5h_81mEttpsX-6j2NMYCObg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060089
X-Rspamd-Queue-Id: A1A5321DF3E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271932-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 10:14:05AM +0100, Konrad Dybcio wrote:
> On 3/4/26 9:21 AM, Qiang Yu wrote:
> > This patch series adds support for PCIe Gen5 8-lane bifurcation mode on
> > the Glymur SoC's third PCIe controller. In this configuration, pcie3a PHY
> > acts as leader and pcie3b PHY as follower to form a single 8-lane PCIe
> > Gen5 interface.
> > 
> > To support 8-lanes mode, this patch series add multiple power domain and
> > multi nocsr reset infrastructure as the hardware programming guide
> > specifies a strict initialization sequence for bifurcation mode that
> > requires coordinated multi-PHY resource management:
> > 
> > 1. Turn on both pcie3a_phy_gdsc and pcie3b_phy_gdsc power domains
> > 2. Assert both pcie3a and pcie3b nocsr resets, then deassert them together
> > 3. Enable all pcie3a PHY clocks and pcie3b PHY aux clock (bifur_aux)
> > 4. Poll for PHY ready status
> 
> I think we never concluded the discussion where I suggested the
> bifurcated PHY may be better expressed as a single node with
> #phy-cells = <1>, removing the need for duplicated resource references
>
I understand your suggestion would look like below. I agree that the
unified PHY approach being more elegant from a device tree perspective,
provide better DT flexibility and eliminate the need for different
compatibles and dupicated resources between 1x8 and 2x4 modes.

However, this will include implementation complexity to phy driver.
The driver would need conditional logic to selectively enable different
clocks/resets based on the PHY parameter and maintain mode-specific
resource arrays. There's also the issue that assigned-clocks
GCC_PCIE_3A_PHY_RCHNG_CLK and GCC_PCIE_3B_PHY_RCHNG_CLK will be set before
probe no matter which mode is used, even though in 1x8 mode or only one of
them is actually needed. For pipe clock outputs, only pcie3a_pipe_clk would
be needed in 1x8 mode while pcie3b_pipe_clk would be unused. For
powerdomain, we also need to add additional logic to attach and turn
on/off them.

While these challenges could be resolved, I'm not sure the benefits
justify the added complexity.

pcie3_unified_phy {
    compatible = "qcom,glymur-qmp-gen5-pcie-phy";
    reg = <0 0x00f00000 0 0x10000>, <0 0x00f10000 0 0x10000>;  /* Both PHY ranges */

    clocks = <&gcc GCC_PCIE_PHY_3A_AUX_CLK>,
             <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
             <&tcsr TCSR_PCIE_3_CLKREF_EN>,
             <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
             <&gcc GCC_PCIE_3A_PIPE_CLK>,
             <&gcc GCC_PCIE_PHY_3B_AUX_CLK>,
             <&gcc GCC_PCIE_3B_CFG_AHB_CLK>,
             <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>,
             <&gcc GCC_PCIE_3B_PIPE_CLK>,
             <&gcc GCC_PCIE_3B_PIPE_DIV2_CLK>;

    power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
                    <&gcc GCC_PCIE_3B_PHY_GDSC>;

    resets = <&gcc GCC_PCIE_3A_PHY_BCR>,
             <&gcc GCC_PCIE_3A_NOCSR_COM_PHY_BCR>,
             <&gcc GCC_PCIE_3B_PHY_BCR>,
             <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;

	#clock-cells = <1>;
    clock-output-names = "pcie3a_pipe_clk", "pcie3b_pipe_clk";
    assigned-clocks = <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
                      <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>;
    assigned-clock-rates = <100000000>, <100000000>;

    #phy-cells = <1>;  /* Parameter: 0=PHY_A, 1=PHY_B, 2=UNIFIED_8LANE */
};

For 2x4 mode (independent 4-lane PHYs):
&pcie3a {
    phys = <&pcie3_unified_phy PHY_A>;  /* PHY A only */
    status = "okay";
};

&pcie3b {
    phys = <&pcie3_unified_phy PHY_B>;  /* PHY B only */
    status = "okay";
};

For 1x8 mode (unified 8-lane PHY):

&pcie3a {
    phys = <&pcie3_unified_phy PHY_AB>;
    num-lanes = <8>;
    status = "okay";
};

&pcie3b {
    status = "disabled";
};

- Qiang Yu

