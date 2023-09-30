Return-Path: <devicetree+bounces-4891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 623BD7B4283
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 19:09:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 765731C20BF8
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3015D1804D;
	Sat, 30 Sep 2023 17:09:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D301805A
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 17:09:27 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5A49EB
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:25 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40572aeb673so123693495e9.0
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696093764; x=1696698564; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q1Huhh/OlwpXkMpXKcwHwnmwV8YpnbusYc64GlhC06k=;
        b=ycjxPIHwApQ8Rkq3WEJrcAJG1FvEzsm+LsxR/9GZxGNJzkGdC9zGVk35l6xADKhPrM
         jZugKXdSTCZ1fkZwGLNTj5T6GukyPRTQ/Okvfu8nsQ2AdGlydsGGGb05Sn18k9JuLUsv
         5+KdPx/Jo3NxkCXEbou0eoGjOA7uxslAdUeAMScxZaoX+z0j9SyyRA/MuxUc9Kozdimr
         HeT1TJCyFjHtqzc4lWRjgqEhIKWjebym2z01MAHXUkAojhpJsTUbg86uuYd83dcDaOxb
         JOH3H8kn2eXnONzStL+ESCpm5+BtAfGTWiyNyCSFybZNtNopfYhOSTsNld437fXKyBaL
         MPng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696093764; x=1696698564;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q1Huhh/OlwpXkMpXKcwHwnmwV8YpnbusYc64GlhC06k=;
        b=wn8GNOI68bLXmAlffrJfhj4x40MHMRK+Sn+hZYEyZLWKDwMF6slrwQJB/3gTpw1TyG
         +w/nBwO9HekrRPOBdx3kSdcjlhAI5XgObUcyXCv5iEBvznn5gdQPlQc7c5rxaR5vf5nH
         RTikVBB1ZtUv+gl/EJI9yT831+acK4T9j1sKDD8oQXIWRLUVytTF6iTf0mW+CCgmuBy7
         HxY/sOsHnldMeDxC9QOJgSk5Z3qpcIlApn2afN1Z6xQujma/7PBjV3jyUL/q+AuaDCCS
         u3WeflqkXDmS8YzY+abGWYaN6MKp47MZQyPkLXAQ6Rvox1BHlo9o7lJNV3nZMFkPRQ97
         Albw==
X-Gm-Message-State: AOJu0Yx/RYUDebVPU+4aKGGShDi1toOVlIPA+SH/qvldYdmcoWA4/mpW
	kWEvYDiOke8PZmu1NhztwaQPpg==
X-Google-Smtp-Source: AGHT+IGGWzA0jXfIU4Hw+pBFZeGbPRuLEaQjsqU2dB/VXEaA6vWUusZRG5PeVAvKE1nE2uHlnHw9LA==
X-Received: by 2002:a05:600c:21d1:b0:401:cb45:3fb8 with SMTP id x17-20020a05600c21d100b00401cb453fb8mr6975834wmj.38.1696093764476;
        Sat, 30 Sep 2023 10:09:24 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id y21-20020a7bcd95000000b00405c7591b09sm3756368wmj.35.2023.09.30.10.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 10:09:24 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sat, 30 Sep 2023 18:08:50 +0100
Subject: [PATCH 6/7] Input: synaptics-rmi4 - read product ID on aftermarket
 touch ICs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-caleb-rmi4-quirks-v1-6-cc3c703f022d@linaro.org>
References: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
In-Reply-To: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: methanal <baclofen@tuta.io>, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=1134;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=pgIIB7OL7EFg+Qrqe6fqxDg+RErXXrlo3Ql+ExoD2SI=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSJMLt54vEpBQvqKnbcU/r0PjPs26XTjS9zIjvNF/cLV
 jHWvlvbUcrCIMjBICumyCJ+Ypll09rL9hrbF1yAmcPKBDKEgYtTACZS4MXwP1gnoZJX9YLa1YQb
 87my32genbNy9q8TNbWykpIzChyyPzH8DwxPyqvQSNv0nClsmtMr9c+WOtm6c8vfeXjJFiSGNTU
 9BAA=
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: methanal <baclofen@tuta.io>

Some replacement displays include third-party touch ICs which do not
report the product ID correctly unless we read directly from the
product ID register. Add a check and a fallback read to handle this.

Signed-off-by: methanal <baclofen@tuta.io>
Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 drivers/input/rmi4/rmi_f01.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/input/rmi4/rmi_f01.c b/drivers/input/rmi4/rmi_f01.c
index d7603c50f864..4aee30d2dcde 100644
--- a/drivers/input/rmi4/rmi_f01.c
+++ b/drivers/input/rmi4/rmi_f01.c
@@ -250,6 +250,20 @@ static int rmi_f01_read_properties(struct rmi_device *rmi_dev,
 		}
 	}
 
+	/*
+	 * Some aftermarket ICs put garbage into the product id field unless
+	 * we read directly from the product id register.
+	 */
+	if (props->product_id[0] < 0x20) {
+		ret = rmi_read_block(rmi_dev, query_base_addr + 11,
+				       props->product_id, RMI_PRODUCT_ID_LENGTH);
+		if (ret) {
+			dev_err(&rmi_dev->dev,
+				"Failed to read product id: %d\n", ret);
+			return ret;
+		}
+	}
+
 	return 0;
 }
 

-- 
2.42.0


