Return-Path: <devicetree+bounces-271420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4O1BHR1CqWkZ3gAAu9opvQ
	(envelope-from <devicetree+bounces-271420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:43:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C944720DA0C
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:43:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56B9E30847C6
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0044A374188;
	Thu,  5 Mar 2026 08:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YDWZt0Um";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T8oBxFNn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF96372EFA
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 08:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772700047; cv=none; b=jemzOpRRKwUoQrKtqJRi2FoBnH5FwVGzntxIMvLpwZVnHGcxe2HBV1xhvWfcI1B6M9fKkHN58HCpv7kH7KTiqKHTpri45DHitnaSK9p4pDKD4eAjcReRwc/niGOhn15twOI9gYY8bjvlzj1ZngDv+oGOFv/k0W2oXOJDgnQY/SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772700047; c=relaxed/simple;
	bh=5A9HEXmKY1kSYKEFmRjjPxigM3GrrJ8dUEUClUysDg0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XZpS5fV80bLuEG1BNp2BkOkS5Vq81p2y/kVDLS2Vd47FI20EFuNwMKxNMs5/VCBq0KT5fB87TMw7hAydNb2HoQK38Fgjf97cRtnN3d+Zo98JEqkXCXcPfNOx0Pv0SxqXAiz8U1NWsqoloomGiUqtH3nbc3vpsxCTqkFXXMFVLyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YDWZt0Um; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T8oBxFNn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6251BpL21193245
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 08:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eMfCcUyY2UMWF+U4/TQnvNQb
	6IM9B8sI0EP+RllkSJA=; b=YDWZt0UmsxIduQCZf9HoT7VIufl/Xt26OFGirRP5
	jUn55SXNrr9emyD/1NP/Lus1XDEqXej18tzr+EY096EpKJNMjWn39zN6MEaxK/EW
	HWxrktD7dylv9FYOz+ytuzH3O+JDpIBZ7YouT6Ad0LN1FthJB6qsJ/IExRwz72i+
	gGEKiA0NUc4KsTXD4EWZ57+6wVG/gCLDCNSzjOqW2ymzhnm11gSNb56rM8lGJJV7
	CcL6h9cLU9fsOupAqfwPVihXT9vkrkaD+CFfaVXN3ggukHN+FcpJxsnB7cooR6X4
	hQtj6gAbGl30RNSpmPnT5bsL2mVPkNg6HscpxJn2CY61xg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpqwgare2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 08:40:45 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2be1a486968so61050708eec.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 00:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772700045; x=1773304845; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eMfCcUyY2UMWF+U4/TQnvNQb6IM9B8sI0EP+RllkSJA=;
        b=T8oBxFNn2JqAcDnCLcf2/mQLs0kWjIzzwbCDzTuaF8qJO/IayaXPQsz9NIcKKUGB0w
         olmMM0YI1v67WI+uM5y0GDHvAg0T4TrzRwnke1jlKQzvms/Cyftlo37Me05+dz8eZ8J2
         bl/kdyM8HMWfDTiE4G2Wb4PTMKnE0hD6vCvY70EVz3ab4bvAFpGSPKse/8YPeJVKa/4L
         f4txakg4CvolvZRjq4BzAWGJNYXMXN+GqR+2B+NCwgXy0QfTX3QCAfU1vh/noc4H8VPb
         KV29fSY9oDc2Fsk9ec8ZfINZrWMXWgCuzu0ZPb9MU0aB4X2Maw88eGD9ji/udtWYm0Oj
         3Ueg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772700045; x=1773304845;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMfCcUyY2UMWF+U4/TQnvNQb6IM9B8sI0EP+RllkSJA=;
        b=mBZY+UmuZHepQts2CvcbKrOpCLj+duA8y9/iGTCX60w4/niRp9THJNQjkLFGHbsAGo
         R97WbZuZVHXlj27ctS5MVo+0I5wwrgned9mFR5Bvu2gi2CrrjGaXvYdO8TvepnIXf2XL
         lgGE57lvgo6rbr44Ep9YIN6csnz2AEDO7p7noas/dyl2/NfDa7Ao+3c5GT2fWxVHE3VW
         R0gmSgzYAwby65Gpy3vEsfzqkqYtCNB/LorRrgXijWxOk6D3DdHwVsihGubL93r9dYkA
         BSCaiVJwwz9oFfMVcDuSlgknoRpGiYX/pvpcu6toJGzBeWmaQad0nFOuAl6An08ENNgW
         mhoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaHWmC+n/AXixzl0/TOHiG5A6sfzdv7vX+snsXypl3X31o0vLMAIt5SoI1caYJiNw9pUOBnyjPIoG9@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ7XK3/v1g6vs/7qd95FJFb/FCXOb8sD/WIThCi1s1f4+zFq6/
	dour6q230jYytBpH+/Z1AcHJWHLwRLjF6QZVUYL34M595jxsIs5zjN8+c4Z74xYdizLaeUhD3AQ
	ObBAL3fAzpPe72kGL8dmasTLYi73y+JocvbRPq4VohmsdSyW9UXZkZitQ8SdQPX+8EO8rma/5
X-Gm-Gg: ATEYQzy/JozY+o9JmFMUpW5sbpMLYCCeYJQsBABz14naoYoig5hSW4rksli4h4cUj9l
	dbJRFAkH6K2AFLMwhTmq71php53JTXWQPmWu8txcSNpqpFMzho55KD0OK4MsbwL2WVjQfQhLKgf
	uMwQUrc7ioaieU9P5fq+N1IdlO2D78sPlpaOpIqi9HL7kQcCRHq7n8AIasaN8f/obQiTH52xHUc
	VnLSo08NbLV76sNpgpKi0fDeLFrUX5MzRkL4wX+y6vRmmwSjbgpmtYykZf3oP3zAIVl7oTx8Gpe
	EJL6CL9ThUV0h+xUO71pBUt6aqY6NZ45gnGuOrVPIHMEgHdkWP0AZAUyOyHXkOGQFyhfQxxiiJw
	5Yn9T0EUqVJSyW6+kQDsq9rwCSRkBpVT09CLunSsB6nVMN9q0kxzj/VmqeOdl/agPZReW
X-Received: by 2002:a05:7300:a483:b0:2be:2b8d:3987 with SMTP id 5a478bee46e88-2be3108dbd7mr2241987eec.22.1772700044530;
        Thu, 05 Mar 2026 00:40:44 -0800 (PST)
X-Received: by 2002:a05:7300:a483:b0:2be:2b8d:3987 with SMTP id 5a478bee46e88-2be3108dbd7mr2241972eec.22.1772700043963;
        Thu, 05 Mar 2026 00:40:43 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2c9c67dbsm3371059eec.19.2026.03.05.00.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 00:40:43 -0800 (PST)
Date: Thu, 5 Mar 2026 00:40:42 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
Message-ID: <aalBitirfu/rHhIK@hu-qianyu-lv.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <20260304-glymur_gen5x8_phy-v1-5-849e9a72e125@oss.qualcomm.com>
 <u4abdgzrlfijwymnoneb6xa34l3y6fpenlbidvej5cgfz2dzkd@dk37ihalaast>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <u4abdgzrlfijwymnoneb6xa34l3y6fpenlbidvej5cgfz2dzkd@dk37ihalaast>
X-Authority-Analysis: v=2.4 cv=bdlmkePB c=1 sm=1 tr=0 ts=69a9418d cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=6aSL9Ysz0BH7CvPNE-sA:9 a=CjuIK1q_8ugA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: bXF8D0p8qnkwWf3JqMNWbwzpmrI78FRB
X-Proofpoint-ORIG-GUID: bXF8D0p8qnkwWf3JqMNWbwzpmrI78FRB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA2OCBTYWx0ZWRfX1heZHmQXq666
 PAn2rcFQdyD5NegaGYxN5G+XPZV0oVAlCq15bN3BkXD2iJ67rA1GlTHn7xYhwGyCCTwD4oshNKk
 lPYEnou1MRiAdgsdDeCWJ8ssvQdTfLQMhhskdMHL95qCBWHRBNWbcQVzg7Vb4+pGqHxpdvO2O9N
 nQcNCAvuPbiCOkXN8yHL0YjU/5QnTn3kbZ2PZsWgbxcpout7VgMn9awOESQrJpaLvpUFPQX7bvz
 6d+xlAcgXVx6tGGWBD6HUYG7mFRW5WrGxw7s0OdrxcEBtA/KfQiaTESkFPK72xpZiC2eCymQfir
 qHsULTRCqGBuhSH+kSWT4xOMAWP1xF6cqy/9QuQm8BT25mG284fvaR0JAoarJpK5EhWj5fj1sKQ
 6VgOUmnFMQ3lWIr0aKBhuNpBoWAiXVwmJFQ/V/N8zf1oVbwBsO8xOQxxwp2l1nMEDj5lYuBf4sa
 gPehkdqRiIlMHDwnAjQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050068
X-Rspamd-Queue-Id: C944720DA0C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271420-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,hu-qianyu-lv.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,1bf0000:email,f00000:email];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 02:02:18AM +0200, Dmitry Baryshkov wrote:
> On Wed, Mar 04, 2026 at 12:21:59AM -0800, Qiang Yu wrote:
> > Describe PCIe3a controller and PHY. Also add required system resources
> > like regulators, clocks, interrupts and registers configuration for PCIe3a.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur.dtsi | 314 ++++++++++++++++++++++++++++++++++-
> >  1 file changed, 313 insertions(+), 1 deletion(-)
> > 
> > +		pcie3a_phy: phy@f00000 {
> > +			compatible = "qcom,glymur-qmp-gen5x8-pcie-phy";
> > +			reg = <0 0x00f00000 0 0x10000>;
> > +
> > +			clocks = <&gcc GCC_PCIE_PHY_3A_AUX_CLK>,
> > +				 <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
> > +				 <&tcsr TCSR_PCIE_3_CLKREF_EN>,
> > +				 <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
> > +				 <&gcc GCC_PCIE_3A_PIPE_CLK>,
> > +				 <&gcc GCC_PCIE_PHY_3B_AUX_CLK>;
> > +			clock-names = "aux",
> > +					"cfg_ahb",
> > +					"ref",
> > +					"rchng",
> 
> Please align on "

Okay, will align on " in next version.

> 
> > +					"pipe",
> > +					"phy_b_aux";
> > +
> > +			resets = <&gcc GCC_PCIE_3A_PHY_BCR>,
> > +				 <&gcc GCC_PCIE_3A_NOCSR_COM_PHY_BCR>,
> > +				 <&gcc GCC_PCIE_3B_PHY_BCR>,
> > +				 <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;
> > +			reset-names = "phy",
> > +				      "phy_nocsr",
> > +				      "phy_b",
> > +				      "phy_b_nocsr";
> 
> Should we be supplying _b components by default? What about the
> platforms which might use separate 3a and 3b?

We can override compatible, resets, and clks in board.dts.

- Qiang Yu
> 
> > +
> > +			assigned-clocks = <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>;
> > +			assigned-clock-rates = <100000000>;
> > +
> > +			power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
> > +					<&gcc GCC_PCIE_3B_PHY_GDSC>;
> > +
> > +			#clock-cells = <0>;
> > +			clock-output-names = "pcie3a_pipe_clk";
> > +
> > +			#phy-cells = <0>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> >  		pcie4: pci@1bf0000 {
> >  			device_type = "pci";
> >  			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> > 
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry

