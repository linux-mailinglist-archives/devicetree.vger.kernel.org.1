Return-Path: <devicetree+bounces-189428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D9889AE7CBC
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:28:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A23F1C2494D
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8D9E2D8796;
	Wed, 25 Jun 2025 09:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="O1I/1ghD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9B52D6636
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843132; cv=none; b=g2HZ95t5faOmwTa+AqHymfG9JWIWNj4QW6DOWUYEA5203eEeHv/JhgI4z6tH3fuGTxXOenv7LdcIyxRyJjvheL4g44k45EACrEVOL91u+ImU2oGnsEVf7TzIL07xJTiR+wq8aDUfWbiWLqS8dAepHfewa1kFSI8T2Q26Ca5oqqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843132; c=relaxed/simple;
	bh=szlnn2M+4cgp/Vz2v6MmXU8JqhkzFEwBi7m9DJTOn/E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Pe1fvTIui0ub1+KIGXHerfWPKigGu0QwbK/TUber4lpHTQSlwKKckL67clHUkKS/JEzEMOLU8mx5m8t3OMRjL0A7qXTPAvWBJoAPXk/9gSRSqqMWabn6VqIyArpYzaR4bagVYZz6eC/N6WenaS/QuHDCfZo4/DWIrT/XiAHMj/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=O1I/1ghD; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-60c3aafae23so1525530a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843129; x=1751447929; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iOpNNHlpH5P/vO/w8RICxSBAiEOYxdXjmF7zf7NwIHw=;
        b=O1I/1ghD1Vg9YuCPBgrisWzdXpCp5icaPQUmeBTSaB4M/p06IU07ONxNQkqjDJvY17
         s3UUuQuUM1yVnjNt4sSMWiqCJWecDCiyujNk7apLatCV+UyEvmDuqq+2FayvMFL8MdFO
         7fEXtPAaq5QfuAd/94XxmKJA6njNQrDr1kKMdZDFmq2S0ga5oa72pTHno0q+i/XkghcH
         3RAdw59aM6D6ORs024cHtRrjm6yT0M3wXcExI3wfHtZtMqDo7lA7n0VQiGZT10AMQlP4
         YMsFtQnMwXK35mwRJ1dwfsraKs+ly/hwN5Z8p8KwIryPuhlA/sqmrPeY7Klp6PMh9ZlG
         8fWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843129; x=1751447929;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iOpNNHlpH5P/vO/w8RICxSBAiEOYxdXjmF7zf7NwIHw=;
        b=JGidMT2OXuCpF/eR7lTEDsb5CeoukbzQhtfWXxWjZAG66ATFi3nflalZxTDYYQnsMG
         8M9MVgFVoQ2yfPB6bHxlVsNqWwu8DrF66AxmI0PsZk7QMJxxgf1zqxTN5a67C+JKvuXV
         bkDnmLfsFDm6yIYf8b+mGB0YD01auf3ZHtotWefqcM9bo/6JRyWSce2tXais6W+5F9Ys
         sg1ruSopNMXYawb1y7UZORpLhst0FFV+dcRq1qFytbcyjYkQTJOpy1G7MXTlM5yN4MC4
         H71NyYT9OlqyaLD8qRCAlZw1kjWFH1NEpE3wjcH39Oh2Gn8tLg6hpkLA9gDMxxKieY/f
         rXfA==
X-Forwarded-Encrypted: i=1; AJvYcCUv25tVJf0ICwpBi2IWOUvtSBAi3r3OqQPA78K+36uli7rUWD2Hq2XErRlc7RZCLFWkum5Rsj9sRouC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzks0vBqkJMy70BCXhhYkZ3NcoIXPLytqPxyrs+nnR3FuJ9ennb
	OaJj5qle+No5hcS174zMooxEUYDCUuilmF4rN5BwZJT8YXKUlnIz5EWV/o1ybDhUgqg=
X-Gm-Gg: ASbGncvRaLpIWxBPvXswVChc9V6oRUw2m7pUCNwHvWr4ZgbRrN+p+uCnxErDe3TKKHm
	8mgGmvRXFaqzLZdWaULKDd8bOmHJG+xv2m20e2PiaoAbeDL/ahNP7lyr62NyzSSJ5gQ4QnKJI4J
	0MHm6rOi+NqzSFCJLbBp6WLhPKtTzRVbosekeYi8tdtJcYbF0pO9y8QRs8ZW1BBiVbPYVZCRTKk
	U/TpPC6kcCCkhWq3BW14DFvhC1t17m7BarGqqz8Cz6G7baJ0WDj24ixmP7wBHD/Nq8NfQmwLPPQ
	iUr7mmAdWYVlmC1Yx920kDnKtLMYwk9tWQCjmLYNNuqavU336JDnr36cOqAt7Co5S+XrMK+FY3o
	qQXiB7ecXDbikyde3tgMqsiF75fM6SGuo
X-Google-Smtp-Source: AGHT+IEOlgJqlxUy9xEgR1EbV15vfXFfr7HB8R+KVivWIV+33DBCHB0Ad4TkImLeHdAU0HFbV+mjQA==
X-Received: by 2002:a17:907:d860:b0:ae0:c4e3:e2e8 with SMTP id a640c23a62f3a-ae0c4e3ed50mr133473566b.28.1750843128605;
        Wed, 25 Jun 2025 02:18:48 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054209b81sm1029043866b.171.2025.06.25.02.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:18:48 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:18:37 +0200
Subject: [PATCH 1/3] dt-bindings: leds: qcom,spmi-flash-led: Add PMXR2230
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-pmxr2230-v1-1-25aa94305f31@fairphone.com>
References: <20250625-sm7635-pmxr2230-v1-0-25aa94305f31@fairphone.com>
In-Reply-To: <20250625-sm7635-pmxr2230-v1-0-25aa94305f31@fairphone.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fenglin Wu <quic_fenglinw@quicinc.com>, 
 Stephen Boyd <sboyd@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843126; l=860;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=szlnn2M+4cgp/Vz2v6MmXU8JqhkzFEwBi7m9DJTOn/E=;
 b=kXQSAv2Fqt7HSSldKm2UCk1LLN5WSSvo98wA8Yz4WCUHsWtZJIlbSf5APb7ETgs3Rhn0mt2t5
 Wy3QohD/DpmDWASWF+nbSL18ULi3osoE4xp22xH9sbb8MMeYKpTv7sH
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document compatible for PMXR2230 Torch and Flash LED controller.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml b/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml
index bcf0ad4ea57ea6dbba9ce71280bc3cb9f74db83f..8edb706d72996f8d7f0f5c2d5a5910790660275a 100644
--- a/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml
+++ b/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml
@@ -29,6 +29,7 @@ properties:
           - qcom,pm8350c-flash-led
           - qcom,pm8550-flash-led
           - qcom,pmi8998-flash-led
+          - qcom,pmxr2230-flash-led
       - const: qcom,spmi-flash-led
 
   reg:

-- 
2.50.0


