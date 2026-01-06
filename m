Return-Path: <devicetree+bounces-251924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 595ABCF85FC
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 13:46:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BB2A300726B
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 12:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B57B3254BD;
	Tue,  6 Jan 2026 12:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LHfY6ROv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dGh6O+Pk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AB43FCC
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 12:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767703011; cv=none; b=pdYVHvuvkqZ+ak8POMNtEFjmMesl4nyE0SR2RMsNHmiHsMt7L2a6Ozaxp0HOS6aR/lR8z+QTsICQVQqqx+Nahy6+KxxnCWsxM5UqhdYgrNbJOFMjSZ22EERULI67sa+MCg/RXkXvUq+8BvgzpPD53VU4HOz5WmhOUvCODgjp47k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767703011; c=relaxed/simple;
	bh=nbxSbu3nNELHHaWQFLTKfq0RQnQb8K45axVnhsVUdMM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Opsy4S1/fpsHgGNM9H3vDv8M8irnBJ1ZP/rjDsxYV/HLHpKSlNO8Rp7A/ewTbRJEuU83mb7/krQl4WfOKolbcxP+nMxC2Y8Sc62EQYhUTxJIedpQPdGgumXix5yMOgKCB2J3Po0tK3buSjflKH712FW1m6fFg4OLSNfN8vTFaw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LHfY6ROv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dGh6O+Pk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AYjLx3052752
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 12:36:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aFdsrGyQzvH3//bxJ/J7dg4vdFiIDNfK+TRRwe0c26E=; b=LHfY6ROv72NXf4Ix
	BM1LBq/DXviimD3ArWildiNn/cqwURog0HoDfMzQRh70ugKImKOKJ7n77m6mxN9k
	LBh/VVg+K2o4CMx/LOF//MsyIgQvAWg0yzt0v9eu4u7/PMe6u0yl3pV4bCsSdW8w
	ZpvBiMSeVEePssN64WYKBmbKfM/yO9iQ+8HAck57Z3JWjY+FcFOaV1FAGIJrRjAB
	VChlXrIrwZwZpFfIarxV9GZC/mGcUTbxWLy9jE5TTM8n7Olxwfnjhz7ROFOCyaFz
	wQnjDvxH9OLP9DYBkcQaEXfg6lMYH+NnvitjQOEkkn4Uigq0xysh/Thz1db1Mslr
	7QhZrw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgpn9t0em-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 12:36:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f4a92bf359so25083861cf.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 04:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767703008; x=1768307808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aFdsrGyQzvH3//bxJ/J7dg4vdFiIDNfK+TRRwe0c26E=;
        b=dGh6O+PkgJq++X6x81u/nrmRrMnkrALVSinxdply6O/qesCS7I/wueMxMOVSRW0MgZ
         vDcPCtVHAVs196WxG0dqDpYQ4AgRnEK7JLdmSKw0/KV1Jw48MXlt1dg0UiBwDU3mj8KW
         IVgk596y8LibwyXhPmAmMDU+vp2v05l8ler1lwOTGgsTx0WdZCnpreqTfX5uA+rIi2L7
         EDSwnaVFlDaPiLH98e2Z60onxSOy53RS9OQVD6F8KpAJoryylwQwy2kA6IEJBG5vkEEQ
         oyNVohNhcg6rE/GKMkMHsKlB6UMpSRXorqwwBBTV2Ew1Ljz3fQHWbqlTBKYfmnRZSnwN
         DLyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767703008; x=1768307808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aFdsrGyQzvH3//bxJ/J7dg4vdFiIDNfK+TRRwe0c26E=;
        b=sG2oRKaJoMvOIFy9locWzbtQfyY3vSNtclgRpFR+8spURTo3vkh6Bl6LG9nql4mdJd
         XB/mPOT5vIbMqj5uWG7Hir9np1RdLScdlru2QTid2LV9eKqcRSz7zkebYUe0VydZ7Mjt
         A5LN2Yn2hBuY3h/OSgj7TWjMhJyvOsPnXzV50ma4I1Q0UyNw6UkmxwR6m78Vuohpf+e6
         60ojaHZOlHyizShMPQabIHLkC/s38lbBjSz1qyYhP1Cmi673R0pdTbLgh01i8Ljq7z+H
         VMafwzCWZ3hQTOyi+VqsgXF1z6ij6hxEEi/tMgAFXdNP+tfVWNDZWoNgwpFj2QjnI+Dl
         8+Ug==
X-Forwarded-Encrypted: i=1; AJvYcCU8RtWeZaDDjqH7nzM4UIMHqi2OtM6KPGZRS7ZKGzZuACFHp/GnzSjegBI04PZnFQaO54aw7wTffz13@vger.kernel.org
X-Gm-Message-State: AOJu0YykuFwp+SHx3jzgFXGJ5r/lVFg7bSuOcWruyolKSAd2YLKrTJtz
	YS7NCd5NHroeIiPIM28SKkkWTTiYGCmz2m2m2XfEZ21G1DD+hP+ej886g8/15qK9XLk2XNWX49D
	5C9EsbceHfbNFQerRMDKry2iLgFB9IjsnCm1JxDfKDtIeWHPNw3iHHBqOHCyYzEmP
X-Gm-Gg: AY/fxX4lcQJ+/tXi8cZ21Ws5Ug7qvis3xCIlImgwCfhKqLvpxa7Gkpk1OGabwe4Swxa
	kJldU10Q82eRhowfgsLoQmQozGb6nPjkoX3D5Tl9s1xbXjvDIc2JxeamEC7iYeOIuGmesVpMGht
	rilYcRFKna8o/O+eqtk0U85HnxZUqiRfpm6I0XzYbk29HWss/VxBabcZHIPkZ8l+64L+OyiVdBl
	Jr5uUQ/XZkDWrkgwP6oqMIOaAhX4APvgssGd9wilYWRnA7H33oQhIWgkJu3tMVKYJrHzW6blrEX
	m453wPbXVDCD5gAbUYIi+zGH/zzEEILirEjXUlJ99cYRXQ+/oeRfr7GPV1Cc4XgSTYqYAUDfGbu
	QKwryz8cLJi87l0Q2eGane3lWvCRKIUFfxduTlbo=
X-Received: by 2002:a05:622a:1baa:b0:4ee:1875:42fa with SMTP id d75a77b69052e-4ffa769aa45mr32669361cf.1.1767703008398;
        Tue, 06 Jan 2026 04:36:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF3OlX/lVZ9eRQ3aOxiW51OeVVVBJf12PTSv0Qtj2HDqO8JCJLlFXFtDil0tgcdGIzjsiK6SA==
X-Received: by 2002:a05:622a:1baa:b0:4ee:1875:42fa with SMTP id d75a77b69052e-4ffa769aa45mr32669031cf.1.1767703007978;
        Tue, 06 Jan 2026 04:36:47 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:3980:9f91:8651:f23b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f68f686sm40728415e9.3.2026.01.06.04.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 04:36:47 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/2] riscv: spacemit: add gpio support for K3 SoC
Date: Tue,  6 Jan 2026 13:36:45 +0100
Message-ID: <176770300365.41755.2635230320486109502.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260106-02-k3-gpio-v3-0-4800c214810b@gentoo.org>
References: <20260106-02-k3-gpio-v3-0-4800c214810b@gentoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Fju3CPN3ifsGabIbJYi6zVXdapV94NeU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEwOSBTYWx0ZWRfX4ARn+x9xrP3v
 ChFnW+4hy98lSUsWQhP43MyOxVGhjlV5+Hk6CqePJPr4XpDSJHjCr3P7qE7qS2LdM341MMtzLot
 gg+nrAbSKuqNaGLU+fbTvBJyNgHinLwXiukcH8gMB5biuqtF4FSDLhyA+e5Ou3mUwvhpK+btLSZ
 rf8ILWaOeIAa3QEOU0DEqPVviHme+OYRF2yhwHJFqfGa7t4j82yNRzM08h+u3GAIpNQMKIgH2OI
 d6EFa4q2+KeeaZeZmcTCRiJGDJSdvSWIi6iq1lR3YmKMxpdfaeHyV79l5kreC7LCbj8taT6TvGO
 komxM8RldyzCSIm5UM19yJvBUOm5MuJtquTZDGfXIiTFnlqP6tTNcIt+Zopzbz+WoLqRXV/riM1
 j31K9rp2xdk+A5fneSBHL4PZZrXNvOQRs8935ic4A8usC9QyzR/5UEIzOAq1HV33lrrmu6L3/gV
 CPy1e3luSuced3F72Yg==
X-Proofpoint-GUID: Fju3CPN3ifsGabIbJYi6zVXdapV94NeU
X-Authority-Analysis: v=2.4 cv=KfnfcAYD c=1 sm=1 tr=0 ts=695d01e0 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=aIeBnXaUYv87OnBSPw0A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060109


On Tue, 06 Jan 2026 11:09:31 +0800, Yixun Lan wrote:
> Introduce gpio support for SpacemiT K3 SoC, the gpio controller
> changes its register layout and bank offset, while mostly shares
> other IP logic, so adjust the driver to support this.
> 
> 

Applied, thanks!

[1/2] dt-bindings: gpio: spacemit: add compatible name for K3 SoC
      commit: 48033e4c677be4e3f131df454d44a5d1fb1b334f
[2/2] gpio: spacemit: Add GPIO support for K3 SoC
      commit: da64eb51595bc6073b2fb69c2a3859bba93ed75a

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

