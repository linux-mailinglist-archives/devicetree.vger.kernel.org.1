Return-Path: <devicetree+bounces-276733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNviFqxpuWmZDwIAu9opvQ
	(envelope-from <devicetree+bounces-276733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:48:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4797F2AC46E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 68C21300DCFA
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 062B83E867A;
	Tue, 17 Mar 2026 14:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OOL4vvU/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y2Xo0GiY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F913E8C74
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773758882; cv=none; b=CpmBktwcvktf5v2JwguQSrhXyLuay5ZvKhAbPuYW6wSV61OJP9XKgH2CHWBXgkbQcuF6SEBKrAAkgClQGlt7yn/o4DAd/yLgsFCLzo/MFGBmCzdmGYrbZum8em/nyeo42TCwCxr48ZGrvUJnMw3OICZRGk39N4dhFwgpoJqagak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773758882; c=relaxed/simple;
	bh=d91sZaYsDnRwEuSfUDjlnevNSMTgeV9lU0JK/m4f+Mg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nA8+pseP1SXOO4P8xhqRfuNDv13mI4xPXOgf+H7OO+MSsVdt1YRmS1JglcXGj5g8zk2PwFgrcHwKr3guKpy4Ia+YAlj2CKCgXRRDC3N+A2IzRfgfIxSORggMjytgutozNDiSyMyc6zEIYWXzB8iuKwNvKIqXhXSQiKCg9r8ylHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OOL4vvU/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y2Xo0GiY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HChi1t1639313
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:48:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=H7sovhOd4gZkyI358YRrryGK
	+jm0G4MgUIdC6SvcGgM=; b=OOL4vvU/i5bYl9CcTURRY50lHorFTwjnb/4/RG2K
	xkfVTt++x0s6mFqtp1SOWqNTLedIqZCb1MdAEcjX0ruYwX9hauMaeo1x3PZCwU5v
	yOx0DXdZIpwP+soiMLKAnToEV8su6Z6IJQQid7/tCRnha2uTx0B0XWopUZwH3/zF
	yrgKKm97Lt3Pt05B6DawxW5Nx+RbVM5KAUGD8aLNlz0jZQluH9Ehiy4x5fOpKPOn
	OPhfN1MK1CqX9ukd7JEbSJPsu45p4nPq8GOFmZrubzPCGh7d8draRL6iXXrgJLGh
	kHMQaZ79ncWyiHhNpcbc7Q2/GmTaljEvof2BLgyFgqQNEQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxke0cqp2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:48:01 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd80bea54dso3583483685a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773758880; x=1774363680; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H7sovhOd4gZkyI358YRrryGK+jm0G4MgUIdC6SvcGgM=;
        b=Y2Xo0GiYhLo1Jl+gRRQTMtDX3CffymE32Oh7QB0Bi/Z6XgcNg5xBlYlRO0dAyRBFom
         ZQelb0OYlmwKwZSjJphUxKsfYCUxtOqTbhVBXpK3YGQgQPZEtVfM+RWT0Xpduz5Rfwmm
         TCMswKt9jl2xkxSWfd1D/600azuPj3sB7OZVlwDyCWSgf+6yY7fDFT7Upz+3HG4i/kMK
         xowUrU7Q5taOh7U90yXgB9aatWy1I6XcbZluxkjsMO6aGBXWQU5okJTyNf8SYnF5UHBO
         6qBBKw20ATJJGoHhRe2Hlif03L4jv01y0Wn9qoTJWrViyWQfkno+L386ydN2xxRfEAFy
         SfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773758880; x=1774363680;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H7sovhOd4gZkyI358YRrryGK+jm0G4MgUIdC6SvcGgM=;
        b=MYSWA9epU29b8vJQmBFwKOEc6QlLpXdCNT15UGu9RwPUdJobenyDPJMT5HH6vJo4yh
         UAQ2ppq8P6eIx0jjroWM8s01+hIjOaIZdESWXw4FtSQiB0UVF8Bpvuh52rB7dEppUTxv
         xW7v9ss481MzsScw9pbDZ4hfQoET/oTeBkgf37K1AhBKZbEtnUhrWYnHHPmaa2V30kEy
         zz/3/kOWmN4hfIfBAZMac3PmOQrwcl2ZceaHkZ2PsEY2X+oTyRmE8uI3MERsPfY1V/mE
         H3X37LsDtC4bsX4ihCVd10x8Pz9ftp2wW8jTaDsoZCib25872I+wXOvqaUFiQx0dpcsQ
         RALA==
X-Forwarded-Encrypted: i=1; AJvYcCUCVOD/OaZMi8jdhf5H6lpDZMxqheDkVgaT+ZjaAi5aeAjc/4RjteKrHJufSlqkCmzP/HB9JxqX42rH@vger.kernel.org
X-Gm-Message-State: AOJu0YwPy2uyPnW+RdQRtd+ykXJiklkIGzWZBnZoHF7QY0vX81DEZdP7
	49/LyNDwJxyStbfwxS6/thpPIGeEwaBKrN5MUk8AOlMV4VLLAeH5BNRf16+m+lklTPPlkebfRAB
	EYxkOPXyxDOabgOfCFtuzsDMJ4j0ta4dLK5HKaqqOsEFyUnmCq/ykcXO6ISfH51JY
X-Gm-Gg: ATEYQzxJuyl0xIJuAtAs0ofkpOO6+E0IdTXU+TXew+9jbfdMukqlWpPe+LY8MU895yQ
	miFnTNWqc29AUUwkbNeqXvSoK2K0SHP36DIcw+GQqD+pRFcRvsRDZuJY5Grj1pLAeo8/A9gS0QK
	KH1/dZ4FhpA2kxlR/kb+TslMG2rD/fk0O8MSSV+udgYrKjQYqW1/Z5YYmvoRU4XZkBfgBVPSzg+
	Ve3qgTNYKUM6s5wizErwwuM82tgFBXw8J2Pr/OdT5JWjMK7iCRWphPdstNgcAz7fChKjsyUr5IR
	L1m5LOHlif6Y7rlDCQVzAfJJ1RqFWI7FLKM8mAiLLmCjt3B7bs/mQ1kwCGaWhT9FvfjoINosTng
	lQgDcdPcYNPjsRoc1KW97gfiqEl54fUti8Q==
X-Received: by 2002:a05:620a:4627:b0:8cd:7685:760b with SMTP id af79cd13be357-8cdb5a6b370mr2226212685a.21.1773758879598;
        Tue, 17 Mar 2026 07:47:59 -0700 (PDT)
X-Received: by 2002:a05:620a:4627:b0:8cd:7685:760b with SMTP id af79cd13be357-8cdb5a6b370mr2226205385a.21.1773758878900;
        Tue, 17 Mar 2026 07:47:58 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe2186e3sm57298996f8f.26.2026.03.17.07.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 07:47:57 -0700 (PDT)
Date: Tue, 17 Mar 2026 16:47:56 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jishnu Prakash <quic_jprakash@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 0/6] Fix up GIC_ITS ranges in QCOM DTs
Message-ID: <ot7mpguhlxvwhxznxsinynypdwcwky4fbfaursrr7o5dqigmaa@6yezeixg7fm2>
References: <20260317-topic-its_range_fixup-v1-0-49be8076adb1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260317-topic-its_range_fixup-v1-0-49be8076adb1@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: UJZ2zKOT5Tf2o79R4E5IKOWY4BNFG4-k
X-Authority-Analysis: v=2.4 cv=aue/yCZV c=1 sm=1 tr=0 ts=69b969a1 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=SXTJD1JrO7pAB3PV7a4A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEzMSBTYWx0ZWRfX+Hyf5YSVYB9K
 4QdF2Z257n0D0oSaIQbGZNjA5Xd6t06wYryFsumiozkxj/HTbSBecUT6Qb0aJ3fvPdv1UyLOyzz
 oG616MJgyHwarBTdilKy51Fs2dAMd9guo2t9qC8ZCgKq8JKbLngNJbB2OozcRea3FYI3u9NiPuQ
 XDy5Qdee124P7fBwafujKr76L9uou9OfExrMxbxpxqn1bxL0DQohYWEmU3YhqqG3xsOxnfTeEcL
 X9SOIrZVNIvhmvVzLdsBz9O3Cea6KkXTLxFMHcY7JCediXH6cwDMXboVQADA6Xim+nQE7pq5eYK
 D+95UsemZtT4/9LJDFUVTcSZppXrYyH2siiG7g2OkV/fbsyAPZH94KdcQGDBbfip3hFhCjT4fDc
 ppGvRKFoghIj0V/hv0gZNJmdigxlwfUjgl5j5HYDKpRhbWOgJaRc/fPgm18LyacuRov8jigm+Ad
 IZ8M2zdGwOPOPHyFGRg==
X-Proofpoint-GUID: UJZ2zKOT5Tf2o79R4E5IKOWY4BNFG4-k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170131
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276733-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4797F2AC46E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-17 15:41:13, Konrad Dybcio wrote:
> Platforms with GIC-700 have additional registers (such as GITS_SGIR).
> Checked against the docs and compile-tested only.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Really straight-forward patchset, so for the whole thing:

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

