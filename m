Return-Path: <devicetree+bounces-267101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDqxON6amWniVQMAu9opvQ
	(envelope-from <devicetree+bounces-267101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 12:45:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F7A16CC67
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 12:45:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7C1723002519
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A3C33033DE;
	Sat, 21 Feb 2026 11:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OnN5FkzU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Lq9KGpGg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CA0347C6
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 11:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771674329; cv=none; b=E6fci/OIwYauUMHm1p+CCxPv2PV4K6dmVQ3XaRk0jO5Q9dRrwNLA2kjIYVNcAhyMx46toHUHNjz5hk/j7B+g/ikLhuTLrbkEVItUQe4hIYoYE6wXjQqhlupHoUGZLMx+KzKDXTkK9YPMXhPkiShDLptOkDN5HzdzYswBz5Bh9kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771674329; c=relaxed/simple;
	bh=hkR+aDWnEbijQXJmIbBhHdhpGenvUEZEBRga5xZQ8Js=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JTABzBi/nW1/w+hjTgyal9JhrcIg0W3V2TKZST+6fyLb827qpkjCtURnQHIvvPbOZ6w7tmDexTNiE3Z21CrQwzIs6NxDH4Yr0+EL0hSsRR1umVinyDb2yWtf0QRecuIVCJFV5AJQgmI6jKSgzNqAREc/yjmLP8eo+XrkoGswxW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OnN5FkzU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Lq9KGpGg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61L5DKQ82063588
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 11:45:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hkR+aDWnEbijQXJmIbBhHdhp
	GenvUEZEBRga5xZQ8Js=; b=OnN5FkzUm9Li/y1eJO3JYfDS9QgA/QDILBDkSqTr
	440rwUJz2COhXgvower0/6s2NdDF3ix0tIxOo+NzkQF4fircDjMfwQ55jkJbH2yG
	I14qoyof95RToiOVzXkwHdeyWioznSHBuyLzMAlAqJIb4l6E9TTjvoVhv2VW3IEb
	DbrrpArkW/E7SdbPtFDnYUYEgU5Y3XqbtMPJOu3WpbWjrCnLXce5hp+CxrVbj0+T
	FbLg8MtRxRdbRyPQqaucBxnNeI9u4heAgUNj7VdxnYA9Cc4T3P48JrOOdfupizYV
	2cBYmkpJaBXsKcU9Tc2yTn/Rx+w59qla3qCb71C7n5i2hw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5vgrn1g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 11:45:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70b6a5821so2145699285a.0
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 03:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771674326; x=1772279126; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hkR+aDWnEbijQXJmIbBhHdhpGenvUEZEBRga5xZQ8Js=;
        b=Lq9KGpGgl/7wm2x29VCwYLYAq3e2lstg0tNvS6/BHrP2gF/98WcpnnXnGl6FKr4DPs
         Tmiu6N2QwzVjt+gzgy+JkfovdWP5MvLpq4XhcyfLMvnoDePzY8rcfo8//5Cf1a3ltX3T
         hoKy02al84HUf7NYBDhnHBk1RtvaYyCPONmzxJyDSr1bw8zgRgX9eCUUpq9p0RaxkgCM
         1LpK7eoK9DEiWVjLuI3iZ05q27kX6HqgZgUSrHH2O7DarR6SELBZgUEeUYyiKVAyQEsw
         NU8FacqjjEiGGWWEp+8ijci8dggG1IGhc89091J/yDe269RKfVyFqoUK9ISNxjxQ9wHb
         t3CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771674326; x=1772279126;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkR+aDWnEbijQXJmIbBhHdhpGenvUEZEBRga5xZQ8Js=;
        b=gnqGoeBabMzNudk2WelM87sQdAApVPjZizF5CR7pm5RHzgp5tLx/WIbSo9hquvgzsc
         tdtUmCF9GuizDfvaLDyDCGnFlvnPdtZnEVzT5zycKVkhhCw0fp05FkeFrkX/6+3TJgpN
         Iqk1F2ZtPnoGrkmukx7KW8erLaRzmZMP3QDQToS0/EWK5SHjSzX2gyqGAEoO01FhVHWc
         BDVkmEMT2IxtBNywUgMlUoZkbI87X0G5yqDXUU9JYHBesoagQh5o6xsbJHbqwssKlRfb
         KzPzC28PkxBzh0bQ2w1R1z+ZrVjyJpaJxf5+hji0RASLnOy0qeu8KjJiSsV8gGIf6eIx
         jz7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWRtO9fzdHaFiTB2/hwgVLcEoHVBW0cI/uqEalMmBOv6qCF3FTUIHSlqCS669KJo8nIvVguDoImLMMf@vger.kernel.org
X-Gm-Message-State: AOJu0YxbN3RVfFuS+sTuWTSl0u2Rs1h/4KbgYHkzsSJG/r8j3PuYAmNB
	TozJNuJOAwpw1+4BXzOovwW5dHTwILy6pzw/W8X6v6RB9M7EfCgb2wa7Y69fz1IoD3pdWXJ5RKp
	M9FDV/ZgUcgYNq7CluJnlAuDoBhZCy1poROckEYFkTE1a1xw3s8NLKXeT9IkeXyea
X-Gm-Gg: AZuq6aLMOh3O4baUJ6BxlpDvanILAaHl46DhBKTPhigjC09uliYWC6lD7AGPeeavqwQ
	/vi42OwImrYIJlzTpub1vWInJRgyRIgrvo6YocSQzWZECSEBpTszuy3gDwQC5hs8u18CS+LdEjQ
	xnyXnw/6pBHu+7FHxMJ+m86nKZVfgE8FGXWD0cvFOdCvg+ifceKxZqpgDbi4aS8AReHoyRw+hfq
	Mifz65OAWoL7Px1cZGzRTN32atZxlieVpsy2aVrF0cFRYqUImtN4m5blmUpVBAdnbyZP3NIOvsW
	kpuNY+CDRm3n7EV5wjgKezJs8vVfVgbveizY5Ay78u4nFB//Y7NEzDPuJ6qy02dbb43MwiU2OVJ
	6Rb48Vxl1+QtTOvf6mzC7J6kbfQuAke1xqBci
X-Received: by 2002:a05:620a:1a9e:b0:8c6:ed6b:5865 with SMTP id af79cd13be357-8cb8c9474f6mr339771385a.0.1771674326106;
        Sat, 21 Feb 2026 03:45:26 -0800 (PST)
X-Received: by 2002:a05:620a:1a9e:b0:8c6:ed6b:5865 with SMTP id af79cd13be357-8cb8c9474f6mr339767285a.0.1771674325482;
        Sat, 21 Feb 2026 03:45:25 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d3ff27sm5370545f8f.22.2026.02.21.03.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Feb 2026 03:45:24 -0800 (PST)
Date: Sat, 21 Feb 2026 13:45:23 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Harshal Dev <harshal.dev@oss.qualcomm.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 11/11] soc: qcom: ice: Add explicit power-domain and
 clock voting calls for ICE
Message-ID: <ayk53t4tjes6gq2m32e73tll5umb3fvot4keqxnfi275xeglvq@cis7h2n6j5jy>
References: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
 <20260123-qcom_ice_power_and_clk_vote-v1-11-e9059776f85c@qti.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123-qcom_ice_power_and_clk_vote-v1-11-e9059776f85c@qti.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIxMDEwMyBTYWx0ZWRfX01KuxzJoVl7I
 hxVvt/PK3a1lV2dmmCvh/mQ/SN3d40a6y6xcar1k2QjRM46mFWoBjYn8GH/557woI2vvaRCdEMf
 +/CdeX3Ml/lxTyiQdrIZLwoOKUInH26NGam9J53xWTCyNBrALVSAtc9BthdkgsSuX6F/MXJAyCL
 IMT4DSVmLcr6b2TbTxw36qd4FAngUOUi4k8hYAvKxl3HlHKr+RCaVenBlSYwrxFGFeQf7/lzYg7
 YpulFgUC+csI38hUuiUatpy0sVBvlUQrHGq3i/GowUp0dU3nv2oV1E5U7Y10ZITmuy8Fd+h93WZ
 LYuNSWkOYSYHgc/+fzJqdcJiqOo59Dm5kD5cWb3fVdys6HguZBR0W5HNypa03g4M6IS45P1F+gS
 M90CnNOWUg26KlWGngpOEn/fx9W5CJu7BstqVfTil2AqlsWCO+kn+Xb/gT9So+SwGW0PpmpyKqu
 XcQwcEx9cS3frZngbCA==
X-Authority-Analysis: v=2.4 cv=W+A1lBWk c=1 sm=1 tr=0 ts=69999ad7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=SBCaeXWvHhY2KLIX7PwA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: InIYlk4IHels0QkwydgH1GG1GfObV504
X-Proofpoint-ORIG-GUID: InIYlk4IHels0QkwydgH1GG1GfObV504
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-21_03,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602210103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267101-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 09F7A16CC67
X-Rspamd-Action: no action

On 26-01-23 12:41:35, Harshal Dev wrote:
> Since Qualcomm inline-crypto engine (ICE) is now a dedicated driver
> de-coupled from the QCOM UFS driver, it should explicitly vote for it's
> needed resources during probe, specifically the UFS_PHY_GDSC power-domain
> and the 'core' and 'iface' clocks.
> Also updated the suspend and resume callbacks to handle votes on these
> resources.

Your intention here is to fix the patch that introduced the ICE driver,
so I suggest you add Fixes tag. Same for all other patches.
They will have to be backported all the way.

