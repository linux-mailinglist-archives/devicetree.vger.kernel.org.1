Return-Path: <devicetree+bounces-168816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8765EA94761
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 11:48:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 585FA1890877
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 09:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 960D41E47A5;
	Sun, 20 Apr 2025 09:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="axY7WEXG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08B71885B8
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 09:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745142510; cv=none; b=VfLkpHbFm+oeDqTJoxZpRQNc95cYRJRA75ljFw4HI4DcP7wB3XvYNkd/zVzuEAtl09A+4WhDNUuLhNKm5EUSRP6LP/qHnIVViCVTu0yxlduCIraoyt/mZqwEdTsLLdbLh6CmgIEq5yMAEMg0QRK4d7QnssIqtHBX3fSvTLGZzgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745142510; c=relaxed/simple;
	bh=mXn0pXoDkpgm87elDCujDFMi7Ct5l0c6E7cMwevo+KI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ptHByNsrzmyeHlv/9C/pNmYV+0dJE8S9UFfjSU+IU6e0W6qjUb15eaM88WnPrDs9f/aKZxYI49UzzWd6axE9i97bNh733Yt/cn0OVQOiaIVGGB+7txpdIy1CWMnLmpoS3ucVf/zbw+LS/vX3yc0wJQM8KKExd4SHQSkXBmQKqEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=axY7WEXG; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43690d4605dso24418625e9.0
        for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 02:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745142507; x=1745747307; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KgaxCKXwOIlos19HVgBcYzf4uVbvhuNW1VHVexNu6qo=;
        b=axY7WEXGOU8bdc790nW2/IdUexsFDz6JTTw1s1OBGmDpbLfnNhy1t2Jrc3lEapaOuV
         TRjwUUfHdAvlFb4SqBfhqANAeSPbcCdfsgA/cvUDjS7ATw6ssDbLdLVyGf1hMijgKTF9
         0wuP7nJvjQIEWwDM3c5puG4O3iV6miXoQEIzHzF12j4JlxTbYNBybXfWQHfIuDlb2I5k
         H0C0C9jw8idJHNaHAaXRAmi2bD2Ggoa/h8bv005akCsjKpROJFuCmR8vT7gKxfjP43yN
         twqmBJ7u1PLIqzgj0w57G+vMYcTqio9mjdMgzI7ElWLvsqGCRki/M6vblV9VI5L3QnDC
         Ez0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745142507; x=1745747307;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KgaxCKXwOIlos19HVgBcYzf4uVbvhuNW1VHVexNu6qo=;
        b=cFDMLpykzWfhGgvst/HSnyPIgS5QnGz4Nz+EMgpUWXULqSqXrR+A5bkJBNrWKPbhGe
         w9I8GpMdOdHTW6s9WQ4dTCwKQcMQJHQKHS3tkMTX8nBFQo0b9lh3Z6BxGvRRA9kfV6OA
         FT1/BOontlIadUtePQwDQDjc84JuO9dzvwoO+HioKDUC7vVc9xfPaqp67tTRr6MRoc4s
         5ZOx8qVzsAGwP1Iaa5J/BTzVOr4gWXrH8HQTPYpB0k7ckQtH7tkVAL5ZFn3z/k6vgWp+
         g5+Lmr8q/cUp8f8qXCkSHqwpXDUdVIlJOTg0FMDwu7RvtLefmQGx2XHxHc+6Ivy6lONg
         90Fw==
X-Forwarded-Encrypted: i=1; AJvYcCUYBhoc/Fmr1H6VBSHaclo18+j25+0EZszXmV5N9bLSTZMdglJBvrXGy1mmuc5oB2a8WhS8jOf72+K9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/mHDLIVfMVWfdwv9nRtCdjq6fQsO/labXb10leuXB7mOecbR3
	wX7YKsaw/YZkVYGBHk0pJEIFeJNjrE76620lYFPtAvlZUd/OyTgM
X-Gm-Gg: ASbGncvv//SsE4Pt+n8jnoRR+79XEdJhDZqpsvH8M0wrLQ4XQktUEix5CXquawMU0wu
	Wsc0F1AX/msHgLsTcORUd0KHCzSKmppFScOX9ZN2RPS3PbJpu9b9tDzYUAbMTYHQTAhx5ZVlMD0
	MbD97AHYYStpfkRAsLPXq/s/PFkCmkUxKQZnTTIvlm35NOJ9rVNQ/0QWFZqa0BEN9n3qUhP5mAV
	zDkVkzyhIw1ZGojIomcNe72b7zYnlMwOVZc7kwfkJsRA+BzF+TG+sR8k7JsQ5PhT9NwK4MbB1wh
	1qrxrF/lTqUcDU/2RQ/Iv3l0wFLZ5gU478NjVKI9ukJWRwuAMVg0jgYPDGd/pw9BJoQ/IZGmjgr
	H4ieozhY0SBRyAEbcyHvn6UbfPKGPFybTIYAG4wHm+dZHEB5wah2HI86i2x3e6xJOkBTV8j6/rT
	E=
X-Google-Smtp-Source: AGHT+IHVc6Fk+YrhS4HlpEYRPoMy6wYmziWX+WTODzzhxnE0xaUTS8l8K3F3aATJnU07+Pf/6vdLeQ==
X-Received: by 2002:a05:600c:138d:b0:43c:fffc:7886 with SMTP id 5b1f17b1804b1-4406ab98f54mr52685925e9.8.1745142506851;
        Sun, 20 Apr 2025 02:48:26 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-39efa43bef1sm8273712f8f.49.2025.04.20.02.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Apr 2025 02:48:26 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Dragan Simic <dsimic@manjaro.org>
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 0/2] Add support for WiFi/BT header on Pine64 A64 devices
Date: Sun, 20 Apr 2025 10:48:03 +0100
Message-ID: <20250420094823.954073-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the BT and WiFi pins on the WiFi/BT header on the Pine64/SOPINE boards.

Changes in v4:
- Remove the pwrseq section
- Tweak the device descriptions in the commit

Changes in v3:
- Explicitly disable mmc WiFi section in DT even though it's already
  disabled in the SoC DT.

Changes in v2:
- drop patch that enables the WiFi module, it'll move to a overlay later

Peter Robinson (2):
  arm64: dts: allwinner: a64: Add WiFi/BT header on PINE A64
  arm64: dts: allwinner: a64: Add WiFi/BT header on SOPINE Baseboard

 .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 12 ++++++++++++
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 19 +++++++++++++++++++
 2 files changed, 31 insertions(+)

-- 
2.49.0


