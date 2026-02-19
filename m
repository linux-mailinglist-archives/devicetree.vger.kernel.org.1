Return-Path: <devicetree+bounces-266599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id edAHBpLMlmmSnwIAu9opvQ
	(envelope-from <devicetree+bounces-266599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:40:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 736D315D167
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:40:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60AA73018779
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65B3335579;
	Thu, 19 Feb 2026 08:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hjA1NgnI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="keDD1RoC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6799F303A3B
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 08:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771490447; cv=none; b=lkcQHWSFjOC8W/wo+MLJ0xUZa6yVGNDs2kX3MKyz5dAS9z9yKuwu6467VmFlP8M1+jU5FsDMbErAKn64wCLTepk81KsiHTYrAmZzlX0elIWQKDVRh3bNL3ePHkPxoA4JxWoz1OBGg2syq+/CaB4qy53IVoRD4Ca2g1g+clgYqYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771490447; c=relaxed/simple;
	bh=QHyfMLu8Atiwa25aOmWyojMEjIWAKUbAVajbbeRlS/s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DGfz7wRnJM0B197iEp8/58+/6pz3oBXQ7tISopC1CJs+FAF+q3vzp7DsUGHPwalldawVoczHIQ/yCx2CmgCuogFBoh/sBoYiX6gOC5Hbj0lEjn3gVmPpSioEVLWdEActi6/OYfYK9TGOwlwPHI4cWbH6eKVK5VWWTUYwSMsU2Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hjA1NgnI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=keDD1RoC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J17lUL3077574
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 08:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6OCRkgwVU7K63lwqxmEliA2O
	LUK6JGdhpredyglbA3g=; b=hjA1NgnIL+v3t7AR3HR6NLu5tixye3spPP5DiqG7
	3/VTdohKVC75o1q3vLmXGNMhHb2zlHJyy3FQ9hoogjggSrrI80DdnJpdLNkHd4Xb
	6vcVfxNcrsznubPnTr1C1mQA4ZQfadmmb1Erp9uoptD+kEJf8jM8L01+FSNI5W5S
	4Q+sps7t82lQ4rybJImp0N8rEEsLn66VCQF3qZjMuv33Y4fnLKtKfazS3mczACKU
	/IZHlDLNpyFpUmtEk6/prozcIzfGe3w4u92CmxSVIGT8j9Zt9TQgzug5PlZIVKo5
	2Tp7lIlvV1oX95LXTpHZXWTmcbC77dD6hAheJJyv5eGjjA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdrk80tyg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 08:40:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8ca3ef536ddso666710785a.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 00:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771490445; x=1772095245; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6OCRkgwVU7K63lwqxmEliA2OLUK6JGdhpredyglbA3g=;
        b=keDD1RoCLfxze8NC1yKQ4EGuTPMWm5jnsuGFB0A9KdqzRhQ9SC5+jcJvY9bC4e5x0n
         v3UclYsTZzUYWvCJ+7U2YrVsL9D6Zs1NwaYqW7InHY1YEp87bvcIKJjTQ9AAswc1ZBrv
         MlKJ1KxVf8JSA8sjRZD1Pyi3z/n9RQmOPnqzWl+j4A8dvT6ByNUWrmzISLGmqVy7rB3l
         LUmz4KxFH4S2g+piAXoC1/wI/bO/0t5HANP7m+1YBT86FRLshSwIeyMQjA7ZCKQ7giQZ
         vhA3/pu9AWUwKoxXUwjeTmY25f5BMVh0dhHxHknoWVIVn6tXUlLLKTdn9elau5kyTUv4
         l5Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771490445; x=1772095245;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6OCRkgwVU7K63lwqxmEliA2OLUK6JGdhpredyglbA3g=;
        b=jJhyGKukV99UqKw+cfBgCEDopR9fJuRJKPElRG39m3JTO7xr5uPWcGKl86nqmRNJZc
         +3V9qKxNFFZKEDNnThCwIy0bXkFEE50sC+zbu3e56hNIiSCU8Tm220Nd4h2yR8StNABo
         OiWvUy4wCcEMkSO3oLvs7HwFGOTwJhm6+x+oQT3sObEMvkrn/WoJ9T0IEZGlWLDTAm77
         lHuxt1Ls31bzbAQdy/8//1WlnjP1VaYpLLDdLtUwFP4jQyHcEPWXkZY1xvSkfjwvX2Fl
         5cbyN8QjTu3u6V8Hu8vUwQVqylu1SHKIt3RKFvpmG23NTtvtDACETAQdjJRB/lLcIlSg
         kJFw==
X-Forwarded-Encrypted: i=1; AJvYcCVt2z9TOJVLko7sVOKUVUcMIXEtFiBfYQr7/Ch/7Npi17lnVFWmJx6MEcK1lz4g4U8qc/5wmhX8ly8P@vger.kernel.org
X-Gm-Message-State: AOJu0YzfkIWytsBb/2rVUYTydBPvZVqmWlDfj59XBqa69NO6JFW0R6Rj
	9078kqbrRLBVkphk6O+tlKe0PnqhjQRpW+8SlQy259puA3NEuSV+NIsl1ro27otRAQe0p04gxQ5
	EeARlBfsZsapLu3SYW/ibOmJ8oBDyt8WBDy20FujAUDfCkE76XLRPLAFFvUSDZkGy
X-Gm-Gg: AZuq6aLs28cjy9vRf+C8tc/Sh7jfZSksWWXW1WlDAb7Oa5bgzyCxMGgTnvWKJSvWKKU
	oYhMaXJoA/YZueD9zrlHNQpPMm0l7WXo3eDMfqXPQ/5hT42fWTlkC9xw+jxEVQdbt8wEvDT8wGz
	QekXohWhLwBhOJC25RNo3bHlg0b+zUrgPrHw9YnPJfOXvRhMUqVAzhqpkmWpT3qCU0lnp6su85j
	BolaxY/1ct78DfbS4hNi+6PJnNn5zA6+65bt3STC9C2SvmlmNiZu4HnDsivOHmAPxa1Pbx3NeHv
	axH9ArD1rKzwSS3PsgbFOoakLeEhCmNKcJY88g8wPWaZoX+vLRQ+RoMXrE77zj5L6AlFJ5GqcLh
	I5GiUycE9ta+LvfaKkkvPlLk40VTuhKK6wAECjc/dAZl89YJmn/UM/4LBW9jj3jNdlZq7gPC5eO
	5mHTSynyds1u7yjTqtXvBIBJEbtn2OD3vHCq8=
X-Received: by 2002:a05:620a:4608:b0:8ca:4288:b175 with SMTP id af79cd13be357-8cb4242a549mr2380202285a.55.1771490444508;
        Thu, 19 Feb 2026 00:40:44 -0800 (PST)
X-Received: by 2002:a05:620a:4608:b0:8ca:4288:b175 with SMTP id af79cd13be357-8cb4242a549mr2380200485a.55.1771490444035;
        Thu, 19 Feb 2026 00:40:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f56314fsm5031890e87.17.2026.02.19.00.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 00:40:43 -0800 (PST)
Date: Thu, 19 Feb 2026 10:40:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: qcom: msm8998: Drop redundant VSYNC pin
 state
Message-ID: <6i2i3cymyu2oj33ltlosgfysjlgbv5vm4g5fi7ukc2ctzgts4f@cyn734szobpv>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-2-2799b8a4184e@oss.qualcomm.com>
 <667woowm4dcbsmce6lds7jk3r4b2efs6kk5rkjtotkzsc6grzh@ps3uf6wrzq3w>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <667woowm4dcbsmce6lds7jk3r4b2efs6kk5rkjtotkzsc6grzh@ps3uf6wrzq3w>
X-Proofpoint-GUID: qNBqX-vgkAjN0pRbpvc_sdKoywCc000h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA3OSBTYWx0ZWRfX5Ib13HIsSF5t
 vZrngqaSIHU4A6MphqWLNSbydTtm5/eC4h5YEhX6GMZgmoolGKg37Ax9mp8GHRV0wH/N07SFxpr
 CW8ob9nY7Fi9uFHcTDODjtIA0GY1OvluKn9tIOmumkvUi3+Dx1QQfR82Fp6n+Wwr0PTRe/Wbxgq
 jhmoan14azUtYi+iDU1poPqv3FP/HsSyhIbe6+qObmQM6gvmHnvn+VBtKT1sjA74UgdY8t8Iejy
 QPUhakqlUbXrjqzg3BdhDq/Lyyxau4H2TbFU6fg5xlqj5+Ua0d2zPdsRIgoYqXmfnhsfHqDvyJB
 tfdI0jLMBqyhwaRtWpsi63fxGoiW4CUAmQvwoCOuRsYCIsrkcRg6+HeMaRNuNqi3tbmIutC4fH2
 AmHok+uThpQ8vOHE2oz6UvZ4n1DyqDFGOo1k/vfGaV+9xiU6xzIzxmiWRKomRvlnDFQBikRpA1x
 AD1QdNF2rRnYKhwq3bA==
X-Authority-Analysis: v=2.4 cv=MJBtWcZl c=1 sm=1 tr=0 ts=6996cc8d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=KjmhrmC3ojnh0OoPlMsA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: qNBqX-vgkAjN0pRbpvc_sdKoywCc000h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266599-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 736D315D167
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 08:51:38AM +0200, Dmitry Baryshkov wrote:
> On Wed, Feb 18, 2026 at 06:24:24PM +0100, Krzysztof Kozlowski wrote:
> > The active and suspend pin state of VSYNC is exactly the same, so just
> > use one node for both states.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts | 9 +--------
> >  1 file changed, 1 insertion(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
> > index 0cac06f25a77..30222f6608da 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
> > +++ b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
> > @@ -543,14 +543,7 @@ mdss_dsi_suspend_state: mdss-dsi-suspend-state {
> >  		bias-pull-down;
> >  	};
> >  
> > -	mdss_te_active_state: mdss-te-active-state {
> > -		pins = "gpio10";
> > -		function = "mdp_vsync_a";
> > -		drive-strength = <2>;
> > -		bias-pull-down;
> > -	};
> > -
> > -	mdss_te_suspend_state: mdss-te-suspend-state {
> > +	mdss_te_state: mdss-te-state {
> 
> Seems also to be unused. Can we drop it?

With the same "can be used later" approach:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> 
> >  		pins = "gpio10";
> >  		function = "mdp_vsync_a";
> >  		drive-strength = <2>;
> > 
> > -- 
> > 2.51.0
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
With best wishes
Dmitry

