Return-Path: <devicetree+bounces-193617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F2FAFB078
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:57:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB2D53B0FDF
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:57:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 911762957B6;
	Mon,  7 Jul 2025 09:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="X4VaSY8R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C924293C4C
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751882226; cv=none; b=qBfDlegaGWpQLIoG1lT2D+kgP/8yO5AJiAw9SmzmJ6QrWg75stRf0QehBBUKTqSM9KIVqtBSXyfPTfsBNyhgq8ufnIp5vhw6LLeEGek6N5F+o4+artHOZo/p5XPw/J8qcYiLxXBN89lFprFzS67LyTxu0YVCX1oh3PBTvsM1L1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751882226; c=relaxed/simple;
	bh=S6lh/yUM26GwS7sY+Iag1znpRC0NZFsPzPYfvoED7+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C1znYZxYVchhNdfyXTZJ0HmTLhuT8/XrIxa02cx9PVTUPT/IBIZqya4VMcs/C3r+wN6ZfNZ3lYIrKyZHIv3RQqcV1SleXw3XLMxJgWBZxsA5dabIV32ldYV5znIk4G7J5FyyOS9TM9ZJIQNzQELp/vPoOX3OROuo8eM9ZbAEjDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=X4VaSY8R; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-60c9d8a16e5so5307080a12.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751882223; x=1752487023; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nws26/Ns3LqCHhDj8qpeFEJgKYBLOU5K6Yxp04hjEL4=;
        b=X4VaSY8RyEkC87SHVJ4bFkPacsoL5weK7hpL4ZfhTiArtKqW8hIvAaGmWDIjjQSuUr
         ybO9d0Ax4K0rBnrwga/IfhiGKTax+pcTYDmoO9L0liKsAQZ9lMKCWiNPPdXhU8Odj7U3
         S7GrL0fA0zEWeLBlUx+FbdPDER4lAxdGCY+w/j+3RgYgOwxeLZlIuM7DYPqgggnukqkz
         L8/QwnxOPg4QfUX5KMhZJrOjnBHvP7nzERznJNDmcc5YYdaP/x0z93ZCk+YyP+LxDLtf
         B+wFvnF/ChSAORslwy6A6VY+5eyiIwGOP75YxNu59S7YV/ey8EKa1qzVDLZndGLr0HGa
         Z1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751882223; x=1752487023;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nws26/Ns3LqCHhDj8qpeFEJgKYBLOU5K6Yxp04hjEL4=;
        b=u19M1oEcJ63eIc3cRePtmdsJkSbsnrDyg/ylLwtu1c6p0EvGj+modGDqA9IUc883aW
         21wvk9cc9U+bxgPjuw6HoCAhNxOtifGuXe2UI3SONjAf20+VmH6T7zigXTYPwzv3SARl
         hY4TqPkfq+wd3/1WojRDJTXmRo6M2xeR+IzrkvEGAa6NR8d69yG/YMql+9D/swYyy+UF
         bDp3fnpbUWTqp7UySosUee1A2qm5ve06g5ET5w6FDATtOaZW7Kv4n11Co6Yu6FuU4DCD
         zKJ1lf7KD43IJvkLeHSbZpB78bXtzEFUPF8t9XXAPnPW9KA3StutTAUDLV1tw3GjdCRw
         OzOw==
X-Forwarded-Encrypted: i=1; AJvYcCV4985760cWoNlUETip2DqsAhLyhIRujQz31DGjuErQpMmF34iE35owiY5uvu5OY4Ct3fBLJuQE0NIJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxCIhDqZdM3ei8W7724sHADp/gn9ej9EDNACpV3ZI9eet8FH2ay
	3VVTyzXjyeVy3jpgGciWOlTYjbLyn/HtTiW/BbMd+FsToQJH7CEalGVTrf3p0t9HAFM=
X-Gm-Gg: ASbGncvGm5wgIhLxghwbww8JOSpvh+3AqoAbU6Yj6XmUj3xWkWcSulwJFfUtecuzsxl
	LJdB2003+M+HBcNzYf7gpnFtBycd7MHHbaOjZqsIMDpzCXB+wSkdU+jGIr6iOU3jOl3mBowZFjD
	9ztvR0Dvthz4abj7ZKn21NnDCihJDm1mTxPjsXxz82daT4l2Qw3Y8y5g0/fBEpR56F7EhR3NWK+
	VzU1xrVHLVNgZowEhyTxk9d6JL0/8nPoJlK6TBRoc/XTALl29LsDqU0sKV201ElCoqf2hJ0s9jf
	VOCqYlEtHeYo4FBmbH6jA/m6ohjQu5Hhyd8xhbBRuOs2roPyScg5qAQVxK5M9p0omTNZf4j3fIc
	K5hAW9lWQrcBNPM16p4MKotviAtj5smH9
X-Google-Smtp-Source: AGHT+IE/7aWa5Y2fk4CbBdGT0MFe23n2x5akljQOUIlO79bo2MS6xWS+PWbchVlyA4MuTiRxahiEMA==
X-Received: by 2002:a05:6402:518d:b0:607:f63b:aa31 with SMTP id 4fb4d7f45d1cf-60ff38183b4mr7116598a12.6.1751882222926;
        Mon, 07 Jul 2025 02:57:02 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fca6641fbsm5235815a12.3.2025.07.07.02.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:57:02 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 07 Jul 2025 11:56:37 +0200
Subject: [PATCH v2 1/4] dt-bindings: clock: qcom: Document the Milos RPMH
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-sm7635-clocks-misc-v2-1-b49f19055768@fairphone.com>
References: <20250707-sm7635-clocks-misc-v2-0-b49f19055768@fairphone.com>
In-Reply-To: <20250707-sm7635-clocks-misc-v2-0-b49f19055768@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751882221; l=812;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=S6lh/yUM26GwS7sY+Iag1znpRC0NZFsPzPYfvoED7+M=;
 b=2pPOctPYbsoJV/7q4SeIJ3aZzeCQ4bqEE4XA2bs3+JfYnx/k1QTetvmU6+n6dtdm3kpMRGn1p
 OpBzWTqJahHBhyQN4aB8TAhmO0zN6FHy8QmISjKHL2jFgYIQGeJC3/P
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add bindings documentation for the Milos (e.g. SM7635) RPMH Clock
Controller.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index dcb872b9cf3e01f87d4fc546311eb758ee63af9a..a4414ba0b287b23e69a913d10befa5d7368ff08b 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,milos-rpmh-clk
       - qcom,qcs615-rpmh-clk
       - qcom,qdu1000-rpmh-clk
       - qcom,sa8775p-rpmh-clk

-- 
2.50.0


