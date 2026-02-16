Return-Path: <devicetree+bounces-265801-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UM22Ei4ok2kI2AEAu9opvQ
	(envelope-from <devicetree+bounces-265801-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:22:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCDD144874
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:22:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E93030254DA
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 518E9315D58;
	Mon, 16 Feb 2026 14:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MxEricMv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3FE313E17
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771251722; cv=none; b=q21nUe+hAH/lhD8kk3sq4k8SlCKiQuRRoZUIB86MKW+dHvRCCPIRjaDbuwykogCcyVkRTJPMKZGUm22X+ZpWlxRpak3TqdZUj6chcWvqUcojM+0wW5vVtnuTZc67Ioyy95mNW4J3Zkkuo4GE/G5pQQkuCK15l6bSQq5lNR5RZO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771251722; c=relaxed/simple;
	bh=xjSbwzZtG5gO7c0c14CObzQrxd0ynl2lj1Czc800QEA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r0ufJiiFwgRToEddchNCqXKyqUkuNh2nmOdpDkEdZFm3feEkYbF5vWoSo8ADYNoiNCzU+S1c+snw7NtjHNeCQWofVrDm350GA+0iBUsyQOZ4YeudzZJ5ql+EIhL/OfL38wMCaB2xHf1b5THAVfXKe4PHeDT+o86xeUlK8RLnlv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MxEricMv; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-4834826e555so33382555e9.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 06:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771251718; x=1771856518; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/S0eg0m7isWhJo/g2N8HxsSID1GAb0gdwF9PpLKomXQ=;
        b=MxEricMvj5xHwQE26PfNEF8hJ6GYHG5UFdQXMxhZpZF6pGG7B6+R4lElKrg60H2AWJ
         UkrNQRVxLd8f+zmtDFdsE2ctuTx8445emtitgyLRx4DYnM2aFDdGA2XnkufENaBmuFqc
         egrFCtAcz6BW5bjDBY4SxfKVoXEgtdGiKhpcO4x/yJfcev3ksRspqXxZXK3VYnPkIBYz
         FvLJ7YtU9lk65c1/ThnWpzF224LVyyTds09p/pu7tHQvUgNPomNSBZoAOIVBwX7LjMwa
         Y30o0tLA/ht1+YhgfAMnbMmGpc3d/xOTeAIdbRfO65izZeciHYSlkJ9V530ejlWNjaur
         mxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771251718; x=1771856518;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/S0eg0m7isWhJo/g2N8HxsSID1GAb0gdwF9PpLKomXQ=;
        b=ixW3lHPJsmqF8tWvlXoY6m/4vOP9zzyM7j2iqGLkOAyTaXTAGCefMbtVTfBk404BPE
         wr2epGJpJsxyzcWFgWipzk8OcayjGBtISYYT5hGcJ6B3mYbFZSYHsN2/RSw8XNRQHtrN
         dgPDxh3YI6v0zvc9R+bvyHEVjin9sH6XZXUoN1YMH4Xuvkn/95fDCbuZUT9k2u46hgEI
         GAyoSxobuy6pJtIsmL4tVnCPAoNc8gINiq+niXgAfBQyrvib4I2h1EFWm2bTNwchRWnT
         ktN+5Nv1FHdxmY1s0agB0vQe+tjZBIgtZrSZqiKJhLMswzv3nJscPNf86i267z6MAxYc
         yQHw==
X-Forwarded-Encrypted: i=1; AJvYcCXiLfvNVlWxGEhIyVSyRHHsVPTdQ05Eg1mMI/9eT1kX98dOdIuINQM/i4aCiScQVUJzsOL/o/jeKsAC@vger.kernel.org
X-Gm-Message-State: AOJu0YwpLpt4tEx3rFgZJvm5Fgsxh8gbGeY+LcrkUfeptUsF2OTzumfM
	c6+3DxTLgEIDrD/5nSFnM78cp2gGDXqz8bHR3uazPFXeif+bt+XRk2ZYbYPm5ZJYOI8=
X-Gm-Gg: AZuq6aLwboLVREVWKdAUAP9zaTZ8tEwfzZC2xRXBx6sw+Z83dF4G79ZqWmYfbSwnC3o
	N2j+YpGwnV/E7cW7cLtvcz3J866LFgWbGbNNQh8Oqh7M/6DcSFs5bJ3OkCnnAknw3EMq5Y8RR2c
	04oTm0LdkmiC0XZDrXSw7xx17xkWTihZOQBhK3zgVKMY223aHwe1sGZFe53id9N9q5qmkjHEebe
	xSLfEN3OX6EX1QvPwsXzdcc6PW8KxzPn6wdyPXH5mWNS/YHZf6hklwBH7d+uSHfgMFHTWSDXDTY
	CvPYrAerT3617LbOyNEssBvnvMzWCIaX6YCSvon9vPGk4PEbe8hlOdeI5X1EKrX0PYs1lAYMyok
	CiWEcSaEVLcY6LAn3h8i7r1Ac316zT4qJ8eOuaZjIbFP+CemjCazsqmnYyAAnoNjiVv/zTIHayL
	ZP/Uyoyln5FhafjEswiWuVbYLWVIrcr36OtfxLLr+i+0fZ
X-Received: by 2002:a05:600c:1d0b:b0:475:dde5:d91b with SMTP id 5b1f17b1804b1-48379be820fmr142745455e9.17.1771251718189;
        Mon, 16 Feb 2026 06:21:58 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48370a63afesm86717475e9.9.2026.02.16.06.21.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 06:21:57 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 16 Feb 2026 15:21:50 +0100
Subject: [PATCH v4 6/9] dt-binding: vendor-prefixes: document the Ayaneo
 brand
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-topic-sm8650-ayaneo-pocket-s2-base-v4-6-802c82795431@linaro.org>
References: <20260216-topic-sm8650-ayaneo-pocket-s2-base-v4-0-802c82795431@linaro.org>
In-Reply-To: <20260216-topic-sm8650-ayaneo-pocket-s2-base-v4-0-802c82795431@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=982;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=xjSbwzZtG5gO7c0c14CObzQrxd0ynl2lj1Czc800QEA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpkyf8Uu3n6GpXXDa87jAG9lsUR1lBcqU5hQZIE7XL
 Low8Gr6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaZMn/AAKCRB33NvayMhJ0b9OD/
 9KF4Cr6edVuEMj97z/U0INVHJpC4/15/NVPxKOxk2Z/MsWvqryxZXdrWJcs9RlsjzemxTNUKbGRTjQ
 PnPmdDo7LtdmMP591wksNyV1B+ZCnxgw+07Qa02NO3jSN+XR4omNq/sjpYJW8OFdBM2UpywuDl3Wkt
 yduFtdQSKetYXqksUmccdxlk1hpEJDk53IogetHWlmGEcg9yiObzK3Oe9SCD6+EK3nKnn3iW4yW7j/
 o67qwTLeVZT8HLqLEycUi7EBgFMeovMJfW9HIPLjDK0dLPXjh0ELv9fmTP+2+8i4M6+rMwpJ6OYjJn
 jK09f+bwR/yaXEhWEGX7+5J0u98WnR0asnnCjxJKRZMGfzIZUbD3SVat8zn83ZjIGNo7c3C78fk2Lj
 gJzJqO7DSq94NmDoK0jWT/cS5kLegARRv7Tr9KqIYmybKKfYC7SFU1FrtxFdkRvw34mKpHluaFSVh+
 Os4ZrVR46dHb6zSSG4Pl4TosrYWUQp2d74kMs4868vZSFjIJOXR5sresyaC4F439lcf6Qit5gg2Vyj
 nzdurCS50pb6nH9e4E5NLxK2mHiVk4Kye2ZYNUYY8uzLczNAhpdg1ClmFGfRWpWDD7Kg/EfubAh90C
 n5NMnd5A5SI9HQXXMFr7gE5pH471Ig17h+5WT5NWJd2Jy5UW4GDvca5cLW5A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265801-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,glider.be,gmail.com,google.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,linaro.org:mid,linaro.org:dkim,linaro.org:email,ayaneo.com:url]
X-Rspamd-Queue-Id: BBCDD144874
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
index c7591b2aec2a..45fb1a3a3a06 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -217,6 +217,8 @@ patternProperties:
     description: Axiado Corporation
   "^axis,.*":
     description: Axis Communications AB
+  "^ayaneo,.*":
+    description: Anyun Intelligent Technology (Hong Kong) Co., Ltd
   "^azoteq,.*":
     description: Azoteq (Pty) Ltd
   "^azw,.*":

-- 
2.34.1


