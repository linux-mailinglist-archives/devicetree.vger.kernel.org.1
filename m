Return-Path: <devicetree+bounces-259810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOMXMLSMeGmqqwEAu9opvQ
	(envelope-from <devicetree+bounces-259810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:00:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2318C924DE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F2D83053B09
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 726C2338916;
	Tue, 27 Jan 2026 09:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DR0DNKFo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574FC33A9CF
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769507870; cv=none; b=OdUxlwykKZUOMZXEtFCm+xDmJpalkkOqnFMOR2lJSiI72h9AgRVaih/nBikhG017EFx3eERNjltx/H6vhS75zfv1PQ1lWlw6J4vdpv9RkWQbbzG97FPj19xTJ3+sq9bIBFI8cFFznL3C2s22nzogX5zWLYFoR7tN38Xljw7uRwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769507870; c=relaxed/simple;
	bh=fcj1K5xSZY2CMfrsTNN0Bq9cIxFPL5cWnSbqgyt59Gg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PDdL/TiwRilf/E86pyGhhjWeCk1wSdR4DC5XxzdIFvapb4oP4Zyb4f71WgVoT3ax9/OUO0q4O78bICskL0Xn/XgUVdBRN+Xjw6vZwcrNnu2RV6T/STeZAVgnLd7AELufHnK5r/4zn0DCFqgPetI1DPzViJOfzZkOKnt6yeESNcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DR0DNKFo; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-47ee2715254so27984885e9.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769507867; x=1770112667; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mro/HVDsckTjaIY+Cj9g2EfEbDMs6DWKlUVvgKAipvA=;
        b=DR0DNKFoIY5z2OXNJzVhYHQMy7AJIvqVInaxb0fhHCKzEBun8sLDhU8lzRAG8H6qRq
         Qc8ZDpbO5HvLqmrSRzu0C9BfcuWvjy1kMrskGZnQzIjjeSAMQtijmHCqKyVFFmC7wtA9
         v0U1Dr2BoOe68x7gOgnJPXKN+8fqI3myUSZxxNq707Uy8lTfX68P9RLvLAxn6htua13o
         xWDmHpWBEUpz6QI8B6q3EsCuM5ZvNwGzlV0MpNC4doLWxMxl8LQeNu9SXwwC8L3QlDon
         /hghB2DIKmT6HeXE9DIhYOSyabRk0kUO+o4V+AZWj/0ahVxvASyWqDFdtXopeP2FOA02
         rFpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769507867; x=1770112667;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mro/HVDsckTjaIY+Cj9g2EfEbDMs6DWKlUVvgKAipvA=;
        b=bGj+ytihpwn6dG+3YxHsihKQI1uHaG9PjgoOdx4GVUdQhu/Xv7Fj7nTNZ84jdEQB1U
         WGDUNsAhdfhAX5yfBzppUvnXIvt+jdcWoLbR4Fw2D3fQqilA7HYRD6hQE5L2+ieT3xgC
         8nu6ANorbm7R8O8JCQInvRmsI9ALsLA7mMy89mKvMAO5lh1zZR/Qgh5HquAxFRDLHPOq
         IAbYSjMUiY2I5R0CzIxZu6DEGh+JAPvjo5uinQG32Ys0uTTxfGMBn7bq7Uj+CK7zPEkV
         W2eHMkfqGcTEog3LJvtg3kSS5jffi0T8YaGT5gJJD6bQI9ATFlSv8WKOpV5NqNZtM8GR
         buzA==
X-Gm-Message-State: AOJu0YyaJ8vJUu2TTHDXSj0aIZgVq35RcXfelme7/tOgusOitNAj5T5n
	4uKKCRfNd3f3DlGfFTBRJRtjU6HQJcmW7JbT48KwCaN3QSGq1vabyEYhktc8DoxhLpo=
X-Gm-Gg: AZuq6aLuQIQUXIE4LWJP9+QPVo6fpMfqQiBEzx07NuirVMderreoDd27GNLd0BTqwPo
	Zpkv4gd2qoqGSGWDnvWmZcU5fZ4Fg9Cs9IbDnKYmIa/gVVaipGct7OfriP+QpbOIeBpSVO4dFYV
	0JOF5XRxDD1d32xsW+f/BYhDqqsMLvdJn1CDPMofUn2XHkTeWq74PgyHV5wzy/uUTT4bgIz3fYe
	KYPCZJNpviTN5UiXUb7oaQhY5qIWzdxkA+CQagHm0TASUbksJCzO1hQepVN7CO2R4Iuj6tqRtCm
	I16VCJApW2TKktFPmbpEvU9mBvOKnXpBJlaIkOd4Z/El4PegLcpCSZJQPI9AZcP8eJ/+tESUC7H
	NV2dKO7Td/Fx9lyhp6CqjBA4sZolkGew43rYTHyaNT00EB0bTLosO7X+FzVc4vCMJwUxhCysyzC
	GcsLY+MohpJePqrWVOKuTPBz0u/a0Pa3Y=
X-Received: by 2002:a05:600c:4fd4:b0:480:4a90:1b06 with SMTP id 5b1f17b1804b1-48069c98e19mr11551965e9.34.1769507866543;
        Tue, 27 Jan 2026 01:57:46 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066bf93cesm49056225e9.9.2026.01.27.01.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 01:57:46 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 27 Jan 2026 10:57:31 +0100
Subject: [PATCH v2 4/7] dt-binding: vendor-prefixes: document the Ayaneo
 brand
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-4-c55ec1b5d8bf@linaro.org>
References: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-0-c55ec1b5d8bf@linaro.org>
In-Reply-To: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-0-c55ec1b5d8bf@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-usb@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-pci@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=985;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=fcj1K5xSZY2CMfrsTNN0Bq9cIxFPL5cWnSbqgyt59Gg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpeIwTy1WJEkWNVBZZ8GsnLPMgeoTuWCtSL4q9ZjBA
 vBm3YM+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaXiMEwAKCRB33NvayMhJ0YdaEA
 Chfx3yxxt8m0b/7ToR+hIGbpDEVi7dVvk6HKyCCaysmFwc2cME9eEAVY1DDLbe0Sp15ZqVcAig2Ely
 ueoQa+X/k7gq72oejejmwrUHBpFATZOTgbrz3LR/V8lQLvDhfAv1qiDCYgg8u6G6rkFFTjMSUSxzdP
 3ZuRxvVH+Vtcio7JnzBXwwKr81foFIYPmO6JKZb9aj+cJERy/L9s3TJFKClo2oo02X7QLnm3EdRChk
 q1E327z7zx69Bi7fB2LKQwFZtedEPfx6JpN5ozzrJcefNAu54VP0msYBiOx1F3WLx36f3gwa3VvT0d
 oA2xRTNH+kOKLKEEpAywczEpr4ZierR+1aHP+VdsUlkng2IoagqYEbXzA19LkvHKwLjiLmtBlNLkFZ
 6dUoaVzya+MF0iLBlW4zAT+xTidSVe0j5htwHAg2qo7OaUBf57OFty+TjcvKK5JcrCikSDQpHV9DYr
 8LX5fn21nozGZqcOS1BKfFTE7yx9CqqMRPnfFuSBZMWB8x442MjvnTVQAQKf+li85BD/fRD79eThwb
 +9vyeYty8GKTfgIr2HfUNKYl5FHVWa0v2Af0wkQgtaQhdMQd8ygTDtTspYpj+uEC9y6dTZ+YosqxLu
 CZQfK9wFEx1ZCyq4bdFewiGlK38T2VvDZfRGHWC1+ayaebc0iciFDCy2xzTA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259810-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,oss.qualcomm.com,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linuxfoundation.org,glider.be,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,linaro.org:email,linaro.org:dkim,linaro.org:mid,ayaneo.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2318C924DE
X-Rspamd-Action: no action

Document the Ayaneo from the Anyun Intelligent Technology
(Hong Kong) Co., Ltd company.
Website: https://www.ayaneo.com/product/ayaneobrand.html

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..1f83979e0d09 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -216,6 +216,8 @@ patternProperties:
   "^axiado,.*":
     description: Axiado Corporation
   "^axis,.*":
+    description: Anyun Intelligent Technology (Hong Kong) Co., Ltd
+  "^ayaneo,.*":
     description: Axis Communications AB
   "^azoteq,.*":
     description: Azoteq (Pty) Ltd

-- 
2.34.1


