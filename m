Return-Path: <devicetree+bounces-232865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 60305C1C6DE
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 18:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0598534B9A2
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE051350A22;
	Wed, 29 Oct 2025 17:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PPeqo9/A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DB7350291
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 17:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761758833; cv=none; b=QmSXYbxg4nVXof6QlPzMScOhgfOob0ssjj4iE8Cazi7bkxExiWtrHyKZDggVHhXypk6iJfJGqRbCLBd5imeFgvBKEe53BOXQf2qXe8oBtpFw+QVlaVK/1gWn86UH3nMl3inZfp1liytpsXKrrL+3Coik2MxhECkptRD6Gk/Feck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761758833; c=relaxed/simple;
	bh=ublZXiwdKoY00f9XPGws+wBdMsEf+N9ZiS2fyMTJqV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H4XLhSkI8TwBK4Wfd4kMnxs55r8hW+I0uFtuEgSe3Q3bSIDOXKZkV0HFLaf2YOMKnDoZxRhk5PvYcm8bhCKzTVpc+sc+1Gwm9faUGjcxzsBbmOmHXXD96hnzgcp/1Qm81sU73ErTlU+twTZyg2XsOsgdrI1K3iTjZoxs+448tzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PPeqo9/A; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3ece0e4c5faso101963f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761758830; x=1762363630; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2Ia7dy7OugzoaAdNmxRXs6VrxDzNCl9Ybf9VuqbvbOU=;
        b=PPeqo9/ApuJLe54IwDv2W/cmnB9hjjtLv7IDp2MlxOIUkW4kTaZ65jhy7yROVGib3I
         FkBxYQzOIvcz5VrwK3x055m+DOXkus9ZO+XvkABJZsKEkyHuELxKWdPuXKa8gmzNCnFg
         QIDOsFJj30K8mxodouBhGoVGfmocPwPVWgTDmRvPENHLgK3EW88VIANh+ddZ3r6U/u1e
         h+PmAn2GIatEyz80Toz/sts1i39+gvqvYevQNW2dRbCcALQVlLWP/tQdlmzG0P+1Aapp
         VTXzor56PFRnBrmSIyqQXLTCXIdH4/qkgTsoxx+TognTzxq6FV26gH+19NFNamSF5F2T
         HySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761758830; x=1762363630;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Ia7dy7OugzoaAdNmxRXs6VrxDzNCl9Ybf9VuqbvbOU=;
        b=aoXYx2BP7VOH05MSAnUnt6kyoSsDPhHnxS66ZQsmEkp0atdQSI57SUjTjchtx9Wjrp
         IVVoO6UmmnmTrANnrrlwG8LcrXTBO/AhdTdCpD8crN0YopzLs0P5C1d8d140HWI0y/iF
         CTKvHixpikW8DC0UQ3dFfkzAktHIiyS6AHSXN7msOe4b/fDkfjqwxr4Q6wFebEqVrR8/
         0+mXt+CBd7V2Lq+jPb4cOUGXxo7UxYsP2XrxPwDHZlybVdIuhxM+0lD5XTaBDeGMShWf
         xzVjNjZN/i7NKY5zBK8csLk0PJ4vjtJWJbvrEFXsDCfotHJnLfeyAykNlDKswT2IyTRF
         kfqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtpLCY4PIkpT1fqW5loZxI/RDdH50ahPUtd85fBPepsKzWoK8f8aQ+LgI3ahgxymwu6ciJh3IALMQb@vger.kernel.org
X-Gm-Message-State: AOJu0YwNvVooluWQ+PqFYf8MnF0hrGCXFYSmI4cp+zebQwwple8aHNtU
	vR17wji6rIKr/Thw7410yJ/Mt5M/2txOr885YP63B6vgfqDeE5BUX2HwQMAGQJBElag=
X-Gm-Gg: ASbGncsUMIxZ5gsRxnLzW/m0FsB84N6ZX23/mU0c8Jkr9PoAdWH10EAWQNGwZKpci6M
	66D9U1fUuIZmtiNOHVjJCeMJ057WbhiX9dFuvKQdzYMqoPFi397d2LCgXKo5MTsSacDZAXtu1vg
	AU33JWW/6t9TOUVaQF+OXStq/ofubmVxF3IAm4sDvGv3hsPddY2HX3UcLpqZac0+ad2DQc/X+9H
	jaVC5AD56vFg2oKhfVx16UFmxCexlQpmurEHkSGUvu9+Ci3UZ74bJPvtGvhmTEZ6PvlCs94pKME
	sQfZqiV+F/DkNobRaVVRXANWwMmzFcSVQ0IpQ3a/HGcYICacm886LczrnysyOdv1hx4j2BALhXw
	ex7gN3ThsMmxITNr9I2dXwUSJ7+mdMmTd/pMnwBrWO1dLcWyhrKuzVehiE7rajsN18jrFj3v7mb
	JMbKdtBxDWgb6g5EW0
X-Google-Smtp-Source: AGHT+IGJ3IMd1rSv4GAClinjHOiEReAmo/f52Hk4MgE0Q6oLLDOo6tjGWO/OOryyv4rktxjVDV+Nhw==
X-Received: by 2002:a05:6000:2388:b0:425:86ca:98c with SMTP id ffacd0b85a97d-429b4c8cbabmr389095f8f.28.1761758830020;
        Wed, 29 Oct 2025 10:27:10 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-429952cbc55sm28319303f8f.10.2025.10.29.10.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 10:27:09 -0700 (PDT)
Date: Wed, 29 Oct 2025 20:27:05 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: mfd: syscon: introduce no-auto-mmio
 property for syscons
Message-ID: <230cf12861a4f0b9effc72522444d3e28c1de2c9.1761753288.git.dan.carpenter@linaro.org>
References: <cover.1761753288.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1761753288.git.dan.carpenter@linaro.org>

Generally, syscons are created automatically and accessed direclty via
MMIO however sometimes syscons might only be accessible from the secure
partition or through SCMI etc.  Introduce the no-auto-mmio property to
tell the operating system that the syscon needs to be handled manually.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 657c38175fba..a0ad12ae0bee 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -245,6 +245,10 @@ properties:
   resets:
     maxItems: 1
 
+  no-auto-mmio:
+    type: boolean
+    description: Prevents the syscon from being created automatically
+
 required:
   - compatible
   - reg
-- 
2.51.0


