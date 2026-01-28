Return-Path: <devicetree+bounces-260310-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCuqMgbmeWl60wEAu9opvQ
	(envelope-from <devicetree+bounces-260310-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:33:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 761629F862
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:33:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7426A300E0E3
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58865331222;
	Wed, 28 Jan 2026 10:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Iy8y8AcA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE1729B78F
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769596406; cv=none; b=gYdCsbeGPkRGhNYwCc2FHZhbAwJzBewJFLDQBNEZjAjwHi3FcOuXqbDCF0w3TU5atyoOOlPnKjY9YxuxG4OQ5YQsEzoudb2Gzjg3MfS+lT2LHW8r63kejAbpl91oaFXW8WSQVJ0e1MgH26JeQ7mramr70PlCCiUeEz2z/gVWPAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769596406; c=relaxed/simple;
	bh=ggM0lmW6cYYlFM//90YRvoXSRybaUBcYX+3iqltLc8s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=htX4qqaegNfPdtd4deWObbXXJGgtPOi0/v6lRICq58VLqJYSW3YoKNd/6MF8JaPsd/BpzjEvBv8+tBOiCSrvrFR0a4rsNxV79AfGBes6bNTb7+S+Gca/iOC0mwDHyD6vEr/8C6VyzG57K5MOuxUynvMra2dJ1nc1JitXTusQoFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Iy8y8AcA; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42fb4eeb482so4579092f8f.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769596403; x=1770201203; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K+MjNhLJgCjFiDuewhrwX20BQhE/Cx/HeW2YHayAgIQ=;
        b=Iy8y8AcAmxusgwhMjluzs4TpjC6A9Jt7ZSyF7OynCuvmGw7kVioSdTCAMNMKAqyPyi
         G4R1O+9whca7LxM1N3WcfFFh1W6NsAujJEmk03SnDwENHjeg7G8TxU0qx7L4vBK5VUhR
         /FDOIvQ94PUYD54Pn+0deyUcdCNoxdDJEpYf3tuI+h6KovVPxA2qnO6nLzT/dYwDctps
         fropR0th5lClQkX/BynsAZRpGKPyjfUiWflIxh4P3bFK2Gg1+dLsPp05+0evlGdwILoE
         ++wlxntPKxbU4twvPgWNrd85dI4k8M28C0Jfc1XlXWqww9HbMy9J6BukVKoFTjGSU2re
         v8iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769596403; x=1770201203;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K+MjNhLJgCjFiDuewhrwX20BQhE/Cx/HeW2YHayAgIQ=;
        b=e77Us0lxSJCu91KxYTVVlW013hvvzmKbNaibNzONenl4uwKcDlF3Mr5JuaDJKY0t/v
         Vop4ZtGMxqt6wkAWGTfv1z8g5A9oowd+HK3I/imCOwpgG7cBLyqUJijVr+w/Obtq99S6
         DM1TDFTUcgBOW+7lwxArAxk164kRFhEf7W+RN51SWZSTxxRVoI7obrDfmdvMa2OM5Arm
         ooI8anVVRTPd4TcPhd4nRY4a1qxeaA2rji7It8WS8QmfRe/pQl8EoXdqyITt2fSioDIm
         0y93rr9AV7cIMp9WQJ39aUqoxLi0r3zStC/+Bmt5cWBBcdJl4fUw+b/BUfZB5wK4o67C
         vWmA==
X-Forwarded-Encrypted: i=1; AJvYcCWiWG3h//8UMwDWFFrRO74Vzjc0j8e414jPXlLmxjWr5BAhnijVw/iH42qdCQ+GWpRfOd7pNJmyIrxE@vger.kernel.org
X-Gm-Message-State: AOJu0YwwzLXkOPRSbvPZcbJpPIwjgwGdYnqVR74eUKXgdu66ZCWeYE5/
	5UxfwgPxDCsdbmLXD6DSqO+JsAIuCgjbO1uPFDw/bDRvjhy1FxoV/XPynyk63oAGbE74PaieaE6
	WGZ7M
X-Gm-Gg: AZuq6aL4MUZwlUVwQYnhw2nxvpowFm0/+vd+N8SyJ9kUbvpFqV4njKfCg49miJREp5a
	G1gXoqEhedLIgKLz1M5/pnNmy7rjmHQC3FOUod8IA4siB6q4c//RavNHL0mu6jrLe+etT7C5HeY
	ZoSjxutWhVAYbnWEs/K1+DGaRZyNG0a/sicQ6TNyG1cio1b4O7NKJBA6aulMOudjUJdwidJ4dF2
	LcGFU0qFxGixx6HINrD0CUBNu9t+/vG4Ol5VxZ/Q7Rzoq9Nvat+Y2VC0x4nYKPA/vINZwioAGgQ
	BOvNLcb5qeBmUW/7d4Cg+j97zPQynMgCAXCp9mzWngbTrYN6Sz+BiWC4gghtwCFyLa4mqs5YsLS
	9zQrDqQF7E6Z/X3UugZm/ZV0W1tIv6CmZWNXsvz6SZuo5dRTgVWLFUZ0sDlX/BEuDO/qd5fLIdU
	Scs9FOLd8FbNiYJHR5OndGCTSIJW/+3lY=
X-Received: by 2002:a05:6000:186d:b0:430:f985:a7b2 with SMTP id ffacd0b85a97d-435dd1cc3f6mr6537266f8f.51.1769596403031;
        Wed, 28 Jan 2026 02:33:23 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132356dsm6241692f8f.33.2026.01.28.02.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 02:33:22 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 28 Jan 2026 11:33:18 +0100
Subject: [PATCH 3/3] arm64: dts: qcom: sm8650: fix soundwire ports
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-topic-sm8650-upstream-cpu-props-v1-3-9fbb5efe7f07@linaro.org>
References: <20260128-topic-sm8650-upstream-cpu-props-v1-0-9fbb5efe7f07@linaro.org>
In-Reply-To: <20260128-topic-sm8650-upstream-cpu-props-v1-0-9fbb5efe7f07@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4260;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ggM0lmW6cYYlFM//90YRvoXSRybaUBcYX+3iqltLc8s=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpeeXvrAtJIixC2ZibxfHOk7lufEOK0S4hm1qUFsjb
 sW7HJsSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaXnl7wAKCRB33NvayMhJ0XqLD/
 sFD7oLGxtH7I7XlW0nWH4vSGZOvL5toZ3a3YCIhCXoTF0nyUQ/Ac5faKxMAyutgioHEZm10+TKMYD9
 7UOtmbdDPnwEnIS5MhxoWYblcq1pcfv/0rIXV4JH7WG6hgbO1ANXEomBHsu490uBjGUowoQty1CR6q
 7liGstlXN+BEbwLemqHYVtoawaAMQK7gshJREnaIvlXLTRjqTaj9oDNXR4ckH75kgISQ2lJt6CoZFm
 Xvv/1BAzAP0Q3I5QBfwfJbSrgNul3us5T8DPpeirdFqXRzF9F3Lu6KwwmqgcO7RWjtYDNRkaJhY+0+
 0cBHBCEaz5CsP+qvyGpSZnE14s++YvIFvP84c2DcvsEgb0OTcR6F/FhV0eWzNfWsezEChoAcJf+nF3
 nkJekFapPWuNtzkldVX5fywh/tYcaSqI6w67rJLsaZVWEB68tQi2qT5T1qodIsNMgAYaPEE6kut3MK
 5jNnrggi8ykBqW8cMa8bOx0uFZrrxTztoVNm42IG0dg6HcJADHHwx4v2QQ56ltil99UQk6c7P07iG8
 xJOhya/OiavEav6BSQ2r3fHpAdNalJ+9mqCtzl77EwAPQ2VQVJ/iDU3Hlx89tb+uVXA/TX8f7OsWLU
 YzAocK3fj471BoNL2KHpDMntBiqlUb4f7OTV2Zkp8YIO34gOmFjtFdata+XA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260310-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid,6d30000:email,6ad0000:email]
X-Rspamd-Queue-Id: 761629F862
X-Rspamd-Action: no action

Since commit 9e53a66a2f2f ("soundwire: qcom: deprecate qcom,din/out-ports"),
the ports are checked against the actul hardware configuration, leading to:
qcom-soundwire 6ad0000.soundwire: din-ports (0) mismatch with controller (1)
qcom-soundwire 6d30000.soundwire: dout-ports (0) mismatch with controller (1)

Fix the ports count and properties of the corresponding soundwire
controllers.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 42 ++++++++++++++++++------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index f8563ec79dc6..3ddb5c3f097c 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -4728,18 +4728,18 @@ swr1: soundwire@6ad0000 {
 			pinctrl-0 = <&rx_swr_active>;
 			pinctrl-names = "default";
 
-			qcom,din-ports = <0>;
+			qcom,din-ports = <1>;
 			qcom,dout-ports = <11>;
 
-			qcom,ports-sinterval =		/bits/ 16 <0x03 0x1f 0x1f 0x07 0x03 0xff 0xff 0x31 0xff 0xff 0xff>;
-			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x0b 0x09 0x01 0xff 0xff 0x00 0xff 0xff 0xff>;
-			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x0b 0x00 0x00 0xff 0xff 0x00 0xff 0xff 0xff>;
-			qcom,ports-hstart =		/bits/ 8 <0xff 0x03 0xff 0xff 0xff 0xff 0xff 0x00 0xff 0xff 0xff>;
-			qcom,ports-hstop =		/bits/ 8 <0xff 0x06 0xff 0xff 0xff 0xff 0xff 0x0f 0xff 0xff 0xff>;
-			qcom,ports-word-length =	/bits/ 8 <0x01 0x07 0x04 0xff 0xff 0xff 0xff 0x18 0xff 0xff 0xff>;
-			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0x00 0x01 0xff 0xff 0xff 0xff 0x01 0xff 0xff 0xff>;
-			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0x01 0x03 0xff 0xff 0x00 0xff 0xff 0xff>;
-			qcom,ports-lane-control =	/bits/ 8 <0x01 0x00 0x00 0x00 0x00 0xff 0xff 0x01 0xff 0xff 0xff>;
+			qcom,ports-sinterval =		/bits/ 16 <0x03 0x1f 0x1f 0x07 0x03 0xff 0xff 0x31 0xff 0xff 0xff 0xff>;
+			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x0b 0x09 0x01 0xff 0xff 0x00 0xff 0xff 0xff 0xff>;
+			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x0b 0x00 0x00 0xff 0xff 0x00 0xff 0xff 0xff 0xff>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0x03 0xff 0xff 0xff 0xff 0xff 0x00 0xff 0xff 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0x06 0xff 0xff 0xff 0xff 0xff 0x0f 0xff 0xff 0xff 0xff>;
+			qcom,ports-word-length =	/bits/ 8 <0x01 0x07 0x04 0xff 0xff 0xff 0xff 0x18 0xff 0xff 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0x00 0x01 0xff 0xff 0xff 0xff 0x01 0xff 0xff 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0x01 0x03 0xff 0xff 0x00 0xff 0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0x01 0x00 0x00 0x00 0x00 0xff 0xff 0x01 0xff 0xff 0xff 0xff>;
 
 			#address-cells = <2>;
 			#size-cells = <0>;
@@ -4825,17 +4825,17 @@ swr2: soundwire@6d30000 {
 			pinctrl-names = "default";
 
 			qcom,din-ports = <4>;
-			qcom,dout-ports = <0>;
-
-			qcom,ports-sinterval-low =	/bits/ 8 <0x01 0x01 0x03 0x03>;
-			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x01 0x01>;
-			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x00 0x00>;
-			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff 0xff>;
-			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff 0xff>;
-			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff 0xff>;
-			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0xff 0xff 0xff>;
-			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff>;
-			qcom,ports-lane-control =	/bits/ 8 <0x01 0x02 0x00 0x00>;
+			qcom,dout-ports = <1>;
+
+			qcom,ports-sinterval-low =	/bits/ 8 <0x00 0x01 0x01 0x03 0x03>;
+			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x00 0x01 0x01>;
+			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x00 0x00 0x00>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0xff 0x01 0x02 0x00 0x00>;
 
 			#address-cells = <2>;
 			#size-cells = <0>;

-- 
2.34.1


