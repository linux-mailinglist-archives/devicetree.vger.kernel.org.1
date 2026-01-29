Return-Path: <devicetree+bounces-260775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFCPCHkbe2msBQIAu9opvQ
	(envelope-from <devicetree+bounces-260775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:34:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A68BAD8A7
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:34:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE6893008758
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:33:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B33D1E1DE9;
	Thu, 29 Jan 2026 08:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OZ+e/kZc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PchpeZrh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E751B3793D2
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769675636; cv=none; b=D8WAkghQNYgtwxeKdqYSreGZF8eoLNXPsfoxxaN5gyJvTLC3ysHvIaJmgRe/o1fWx2rqCryEuBx8Fr7MCu1su7S001pZOVLiMl89oR81HanU3EnOYn2O3ZsEQ36+OAlE7qOt/yBwYPEHcLjl3cyPT+8cQyAOkR1botDEfMR8eSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769675636; c=relaxed/simple;
	bh=Rp4eWS6K2LPGlTY1whwjufRv0SdYHoiTxsiJRJoxQos=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=P+yakIv9HcdrZCKh1Mk0jplHbSAe6OMVGkT8SuKpcf/nVXzWKXRnzA9QhvhjPNwR1DA3qT2t5gOw9+4aldnUkfUO1Qz2chzTTO35Pp5plPobsaMSPFHs0cd9jSfBSDVyDZqtpaMf15RvskgCrZQk1wZS7K7xRTQDpDt+hlZcUnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OZ+e/kZc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PchpeZrh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60T2ojJ82033220
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 08:33:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r++wupaoeMHVUQiWZNyeVVCDxB1U6o8YaUE4PRTZyMs=; b=OZ+e/kZczmxjBy4l
	yBl16TJQ3CbhYok04T1mE52r/jJIh6w4unlbLwU6yusoUlxvxwiKefYE/CRbkWtY
	/c3w4ZPAhpho2b76vRn2ARR3DUafzzp0z/I7z3Gv8REN09xHWxVN5z/TczV6njeV
	m6iaFnHv9lDFEDvEQG2hexB0XatvSSF9QeWSW01Tx/N0s16ntYyS2gY/DWAVExjy
	w35WQukt8a9poCml/9IvddTxE3yEkqjqbjGKt8xfAlTak5e1EZJZPi5iyGKhhuNp
	F5ZReTuWXI8BaZ0YmUwjhfzZzQtOPwQb1sWQ4+efvXzcSdxJj1clEESPlLq2P03V
	nGgyHQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bytqy1pg4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 08:33:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6b315185aso337525685a.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769675630; x=1770280430; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r++wupaoeMHVUQiWZNyeVVCDxB1U6o8YaUE4PRTZyMs=;
        b=PchpeZrhCSdyiik6/x3Dols+4Hg7La7WvQaloGDLIIAS3G/ewLuuA2AXCSWvTCUL9j
         dYEujIrfgF8hSg31Ehf+rckRF0GFffKmf9TTmq4TjNOGnpjPajCb5OTTtFxCq/1+gd7z
         jiV4NnD8/dXxNwsai2suWPg5tC+FpmJtaRIks17nnjPn4ZTxDqv7PjeFUgr0xK7gtIDI
         qSv5nclhgc3j/Nia5E0kECD589190aMi/YiPw4QAYWHOzip/bpvgqTiyOWBzEUHyzPO4
         o0yeL4D6bt5trj8sl3XxSdcJWHA6G0gXSICew59uVRfoMtpteab2dSf5YFZKqV/+sds5
         VFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769675630; x=1770280430;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r++wupaoeMHVUQiWZNyeVVCDxB1U6o8YaUE4PRTZyMs=;
        b=krblYzV3Wgps9aEh0NKxgXXxcL9f+5Szh7A6KUQkhj3Adavf+hLZYtpSdy68WR5D9T
         nYgL1sP3I+aNhADKkr8ET4Y9LJ58dGF9nLSAyfglL6xl1aKrKvOxwXJuaXJTqgourWcX
         R9sAX4jylrTIR1jKfR3lGX1pr2uWal7mbU2cSIpwSrAX5SrStOlGV8Gvvlqb1bOfzG5D
         oJ+7uAQ8qO43BfohvmSmtZLPMhypc3I+Rwl9ZuMG3zsaAO/OTm/WWJ4m5GGiWscyrOs9
         K3UrSUpD+5VV5S3xObZ6SRE1PdvugUUZXjjsvK82ir7FJoBCD1jS/Lj6/8E382rbYdGA
         Tk+w==
X-Forwarded-Encrypted: i=1; AJvYcCU2/uAbWMly4LsqbFemfqC8G6v+d+Nq5/J4Rux9Rx93UCUUFfXnLrcUyePOZJzWkABE6zuimyD6cvxj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/VuNorMIGD5yESnMogYKQPh69foF2u3XKHU18wDLJYGc0VDh7
	Qauws8Yyn22svWBl1WmvdmSho7bMopOExK1uX6qNKBQ1Gj3vD05wEJltkAfrNFCYNhHDbvA0PB8
	lb7n5maa6KHlHX3ljgmhGdkKgdvYebMTJbJD3zOk4Aa4DR9gAZRFF7/0nLzosR+Dd
X-Gm-Gg: AZuq6aJNJAT/d5Me0NG/ZTCpqq/D8djB4Dghyk50vzSTz732NJSL54apDGI9a+eq1BQ
	zl6OjVRUONx0qOezg4TlFqcBuMdnD7/jFSRqIwJN48jVOC7dyWZGkECyirxTLLOw2vFFJnX2hwO
	hPWf1/7PVfLWFw3/UJy6Dg9mnjaFVMEyAKQyqfVoCeRVar4YT2+j6zb4VusHpRm8hSZeHA+F9Y+
	CDW2l4XE1jVnG67SawHg/VLraJ4T0R5s3yorwsaSQen7IFvhmN+frjFZNYygaJ8gQaKpH39GAh4
	Z0rLpVwuvmJcxg+g1gG/fgXTBvFWNxx1eNIRXW57VGqnu+zG+FkcFn+aWVK3B4WUq+8FpI6zPXs
	ndlZ7uBqG129aQIOasL8M+rtW5I2CCiQN8w39IfY=
X-Received: by 2002:a05:620a:191c:b0:89f:19e:46fa with SMTP id af79cd13be357-8c70b875d23mr1020896085a.20.1769675630379;
        Thu, 29 Jan 2026 00:33:50 -0800 (PST)
X-Received: by 2002:a05:620a:191c:b0:89f:19e:46fa with SMTP id af79cd13be357-8c70b875d23mr1020893885a.20.1769675629977;
        Thu, 29 Jan 2026 00:33:49 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:eb30:6a8a:1705:215e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4757sm13298559f8f.5.2026.01.29.00.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 00:33:49 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: linusw@kernel.org, brgl@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
        robh@kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-kernel@vger.kernel.org, Prathamesh Shete <pshete@nvidia.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Thierry Reding <treding@nvidia.com>
Subject: Re: (subset) [PATCH v5 1/3] dt-bindings: gpio: Add Tegra264 support
Date: Thu, 29 Jan 2026 09:33:47 +0100
Message-ID: <176967547599.5796.2816287193040668949.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260128085114.1137725-1-pshete@nvidia.com>
References: <20260128085114.1137725-1-pshete@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA1MSBTYWx0ZWRfX5y6LvElOmKBO
 cmYC6SDlez/6dqXwhmOXOZ9cwb+hkmQjZ856QzHPL6xvNoGeO0e/4qUCScvPGvAK6mgj1JWjoEC
 IAMNeI5Svzvz+bPqbMn0OuwDwc6ZifTV834MXNM2ABxyVgi31e2OCV3EQh3YQcIOkIx9uPRRYRW
 9FKcmCJOjq6ZO7aZaLpTtkRM+EY2w0nvhie0TvGZtfytA/Y4LONAWA/UuefFcfmAOCx/NLeT8YC
 i4S7y8rrGoaTpSbLQfUSQv4LVuc9s+OnpyX5mGpkIazZooXS+XrBzeQW/EzsdK5XsPZr+FhvdrM
 OxGrZ6akFCM0OcGqTY9V88+pii8HybmkuH9Zj3KaqyaukySn9L+YIKybwJHrpRUa/CtKrL4C05v
 9Yue8RPcVjAhXb7AHdlif/UQl/jOseIN0ZCg4TKI4NgUjLZs/m7TpSW9Kxb0cv8b/CB+necFdy8
 O4/UqMOeECXtWe3/4dg==
X-Authority-Analysis: v=2.4 cv=Je2xbEKV c=1 sm=1 tr=0 ts=697b1b6e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=mkNFcrO7423Z3Jl_UjwA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: b_XBWUXfrWAXJzTAncZdQcJNh8qIOrnL
X-Proofpoint-GUID: b_XBWUXfrWAXJzTAncZdQcJNh8qIOrnL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_01,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290051
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260775-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7A68BAD8A7
X-Rspamd-Action: no action


On Wed, 28 Jan 2026 08:51:12 +0000, Prathamesh Shete wrote:
> Extend the existing Tegra186 GPIO controller device tree bindings with
> support for the GPIO controller found on Tegra264. The number of pins
> is slightly different, but the programming model remains the same.
> 
> Add a new header, include/dt-bindings/gpio/nvidia,tegra264-gpio.h,
> that defines port IDs as well as the TEGRA264_MAIN_GPIO() helper,
> both of which are used in conjunction to create a unique specifier
> for each pin.
> 
> [...]

Fixed whitespace errors and applied, thanks!

[1/3] dt-bindings: gpio: Add Tegra264 support
      https://git.kernel.org/brgl/c/b565717e1d50078b8f13f3f796e707d24a6f3fdc
[2/3] gpio: tegra186: Add support for Tegra264
      https://git.kernel.org/brgl/c/af9b4a56f0000fb11057e204ddfb05d72ba4dba0

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

