Return-Path: <devicetree+bounces-260234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jxLxHtfIeWkezgEAu9opvQ
	(envelope-from <devicetree+bounces-260234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:29:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E3E9E31F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B00D3300567F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71B06330B3A;
	Wed, 28 Jan 2026 08:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PpKhHJ82";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C9CDyknz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218BB2206A7
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769588947; cv=none; b=WUYhrpwHN6jSSr88J9pp7MyKoDOuS8Bk3NFFQWVZh9ujcClvgz9NyqJk3x1iv1Z2fZDcK4y1nUclVEJz3yf6Q9D19ldxelpdlB2ZaYWFoeUM/iitVQKJFCk40tNdCQyuAlauYjbBdSRpJfn7GjStob93K6ZLYp+MbPCAjV4Zpe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769588947; c=relaxed/simple;
	bh=LMU2As8Y9okypFjE8E28XvSU7Umdb5KIagJEqAVe5Dc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BD00zO69UhK94kiGdhbL0oIvUUbRjeKG7XXfaqmRtSfR/T7s9bbRJyI5hSTHTRkaUZ0wyybgUeFlNHKkjrr3Yt20mI4lJwbkdfrj/J/hY7v0ZpSl1GLA7FBX6DzLEti6xvYvVoh7vbKz0TXla/GKaPs/Q55tpbtCesUU9dM5/sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PpKhHJ82; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C9CDyknz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S53uBC3353212
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:29:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fy22BXGx4/7n6Xsxm97fK3Rb
	VnaklszgkxcvqnBIdco=; b=PpKhHJ82aXYdurde6QmTx6BN5PIfAudUqdueWgtA
	o3G6jgYbT42RtxrVCAM9P4Cmb+vlB25NkFZs+9O9/qjE+5xA91MmtkPAuBqqDyyG
	6iPq0AnJ75m2hwYVtVC96O3ofAPnuMwpRKqVjxECpVN5ZtIZ5OlSYpLSFDu0bAZX
	S7fu9vf236Z5VU2Aa3toFM9qNp4JVq8kiElvMinJXVdqITvc93Z38r2NnZN0J5uv
	eIr90zD/c9j+e0l3pP51VPQzWCl3wFpU6iFCB2ZUFlnjgfG+27C5kmFuZYcpauwX
	aw/gHRgLa87BLmB2RhZCAxRdM0d2qEGSbiF2dNonhJSdMw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bybyv0knb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:29:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52d3be24cso804967985a.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769588945; x=1770193745; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fy22BXGx4/7n6Xsxm97fK3RbVnaklszgkxcvqnBIdco=;
        b=C9CDyknz09nAHHs7jWudHQ78Lzi999mc4BsOnDxKt3P7g6qrJtVtCfTlayCaBNfjoZ
         OjR/4JEog4YFls+sfUBHdfBM6wj2T8p+XcXEXuV34NP8QQq9EtZpjTeh5zlF1mwfNHsB
         vgU7RthOSnkftNuBg7ysI9Cdj0qjm10atBuvq5onFG7m42Se5Q8wbda0zkv+xNK6918K
         mDP2362nf2CH5nKcFz6zLJkK7wxK9QBB7MYiOsOymInPWPnfIM5xNlz7iGYeVeyeTm63
         yOHbTjoI/qeu6Ti2CuAwdSzcW7NXy+ff9xIzeIb5Ut9O7gDtvjNCyL5Kds3zx/ZeRihd
         gLwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769588945; x=1770193745;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fy22BXGx4/7n6Xsxm97fK3RbVnaklszgkxcvqnBIdco=;
        b=gtpPKJ2KnLQ2Kx92vew8oJn0+H++ucE/zsmQiNckpUxW+4U+2y4UOvC+YMtRnraRCq
         WQtigVbZr5vJwXPPjYevSEy5V5uWOAVUVBV7/VsEOFf5gSb2JEAkkplLl8IKWdWCZCXg
         gbRih5zTKkCjFJ3DmuFa5VSGz9paBtBT5lxpcmhYVRk7XMVGT6MDBNtn/fABAAYlCVnW
         ZG77yLTIsrss3ju05v7i87QNVQ65KJ222RujEAxaW6QVqmNfMuJt1x7o9+TFY1kQdDug
         XB4raNN1orKr60pJNHtV488owuKUoUhvgLuyoM2sGNslYrSEqiKV8cQ9/cseutjaLayZ
         CLrA==
X-Forwarded-Encrypted: i=1; AJvYcCXd5XrCEK5JD4luht8L0RbLLB8Nv/lt/IFbdmuC1yQzDLpdG4WxIciMEPRsrSX9VkFqrlx3vEKAv8ki@vger.kernel.org
X-Gm-Message-State: AOJu0YxQwRe2QQTbehd5spzWypjMvoVUVIIGBTkoI4ilmP/RGwbC5F4D
	TtUJeRZf8ZKiOqzvwwOybhwNZ3RBg1vTxVKVp69VABCIdORhf5XqBwxQ9YwTuTczaS7wQBG/TVR
	MI9yM2ENc63Ypp0P+rTCusSzT8gAh6oH8ldQc7e8GsuolZQTq6Rhek7+r0eUGR5iH
X-Gm-Gg: AZuq6aI/BrM+g85LFgw9DtV6H21gPOTk+q7H2vNSc7lskAu2uKjg9j3gzdBVY6f2x+t
	4QZzdCmUd+7yfPPeQERznMWUy+8qgC2DTm0XPfOHLO4dhzJ/FAfT2Tr9yRLYEutIWQHwNyCOhb0
	bDYRvSMZtUB1uKsaJAddaJ2x4SX9YzjbF4nH7BQEXkzTDzQtOd+z2FWzGh6BeOWw9NnT9fEtU3n
	2nIo4AMfE/tI/EoKGgsrStACybqzvbQcCiMQzNsCDRhpG2zOShSemqI21ybzppJqVA/eyJ8vzoJ
	MqPawcJqGYpBfvoKjg/FS9uQu7O30DNMU6M09aWKF54KPFzRgN8OzSn0t/keJcb1MrYO06pNbJn
	4t5Gjas4yOCTELHcl2WNlzRwK
X-Received: by 2002:a05:620a:7009:b0:8b2:ea3f:2fa5 with SMTP id af79cd13be357-8c70b90e9a6mr543657585a.69.1769588944495;
        Wed, 28 Jan 2026 00:29:04 -0800 (PST)
X-Received: by 2002:a05:620a:7009:b0:8b2:ea3f:2fa5 with SMTP id af79cd13be357-8c70b90e9a6mr543653785a.69.1769588943894;
        Wed, 28 Jan 2026 00:29:03 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806d98c8desm36007695e9.3.2026.01.28.00.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:29:03 -0800 (PST)
Date: Wed, 28 Jan 2026 10:29:01 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 05/10] arm64: dts: qcom: kaanapali: Add support for
 audio
Message-ID: <7baeei3xgoyn2o3f5oqongx3ga5hovllkgbhemw36bphxuavw2@6pmdh4q57kha>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
 <20260127-knp-dts-misc-v4-5-02723207a450@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-knp-dts-misc-v4-5-02723207a450@oss.qualcomm.com>
X-Proofpoint-GUID: wWYe1vWHBD1RqZtY7cIS7O2tJQv3cDvJ
X-Authority-Analysis: v=2.4 cv=ZZ4Q98VA c=1 sm=1 tr=0 ts=6979c8d1 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_ouoMj-Ftme1J9xZixYA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA2OCBTYWx0ZWRfX1QUOMnsQs/GK
 wVELL+WK7Wk3dN2ra270MitWn/c1W+rf12+EqhDwBe+VVpNtLVJntpHUEG1zRCUKqtiPVooWnm7
 k+3KwdXHSJw2dhxNGx4roIZVv0Tr5o80s4poWlYjh2ZxOX6PaWGoc/Lj0azX1xsR23+zNL+Kk9K
 HE+8snNppxNMvr/qi9hIAaIpdfnqhMl6/CmdY7RhkdONfks4q51F/raTWR4Gy15fQ5C0FvrRpVf
 bvh4X1FonYllwQ0+KLOYScfljc6sIkeiHm5480tqLZVdtKx9kxNVm/uwAoqz1oNM+aEme6jFmK5
 n07i9voW8CUFFomRsPSlBZWryz9IcF+Lk/DXPDqrOiqRoSvqzfVjgoyGym6jgargGkVn3N8x15A
 V9C/UCNH1YHmXnspg/4GMZ/CD5EvbokgfzGM98aEAVwcD7EUtr1q9DlTata6NlGlrDU3NGBZTH8
 gfQTTJZWw8+w9qtqIDQ==
X-Proofpoint-ORIG-GUID: wWYe1vWHBD1RqZtY7cIS7O2tJQv3cDvJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280068
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260234-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C8E3E9E31F
X-Rspamd-Action: no action

On 26-01-27 00:34:02, Jingyi Wang wrote:
> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> 
> Introduce audio support for Kaanapali SoC by adding LPASS macro codecs,
> TLMM pin controller and SoundWire controller with similar hardware
> implementation to SM8750 platform. Also add GPR (Generic Pack Router) node
> along with support for APM (Audio Process Manager) and PRM
> (Proxy Resource Manager) audio services.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

