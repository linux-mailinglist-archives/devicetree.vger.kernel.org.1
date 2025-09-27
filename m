Return-Path: <devicetree+bounces-222091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB820BA5D84
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 12:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E807B2A6D6A
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 10:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A22C42DF12F;
	Sat, 27 Sep 2025 10:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F0tRh976"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCEF2DCC13
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 10:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758968401; cv=none; b=J7jgO1hpP1KvkZs+C2XfxXKF6cVJtuDz/+SRuhyNNOp/lAL+nzLeO8o/AeTjG4KQJwfjxjbsSh6di0hBgPOf3jCaHY2/+FrQ/uqh6FxVDK9QkVB2bwivmOaZBEF2yWKBZElJdJGahAshGjEcJYkXA0JSXtb7vpR/u9iXxL9P/EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758968401; c=relaxed/simple;
	bh=vEHdMu4fZDG0pv0OrxT4yCsQ2r9RoDo1W3KJXPI34so=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SrzETHC8QQVoSyHvMQzxYOlWYTaHdjsV0INTEPpJA8/iJaS4oqJ9HzorsOWPuDCmrGEAE69PJ6ljCtbU7AT7EJOLbEr6LhvY5+1/Zk/J/3u5I2e2I2Da6iaPIY3rp83BtvwTLfbGoL5bTxUplYe8LNODpGpDTk/FKNKhxeTkJ7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F0tRh976; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3eebc513678so3161205f8f.1
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 03:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758968398; x=1759573198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rVYljPZ7zSakciHIair+w4BKANbFUIx4H7fyvtM/0P4=;
        b=F0tRh976BZ5xb+VRYPxhpmSejlxQOjKfJVJLJhcMffxMcaAnBfPbghveIDhEb6A/Vj
         rolAVWhJfbYlTzwzyUzHkMWrvnSH74wDlNxjtyA8cLJId7LfZUqgm8cx+Z7gNa53o3T8
         k1FywAJlWGvbKBv1EDizPm5hqZGK5yUtHVTZhriYX+nIyBnfioXbWEva9IWaAg5DB0C4
         GVCIDazAkS3XQlifiVw2HoR6emLRQXm8B1Xr25iSZsrxWS+k4DmHmV0JYCrIzgfPK6hU
         IfhsO4vYNhmoKVXON+YMREKcrhAUr/f1AZZ4fhry4eMNW0DHUPZWl8EbqtRHr0t0Undt
         TZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758968398; x=1759573198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rVYljPZ7zSakciHIair+w4BKANbFUIx4H7fyvtM/0P4=;
        b=Cq6t3Ctm2oP+xT4XY4O8Ed+6OO/vFqRdto4FuOmk4nM1Io/Tazu0GWdQf/CeJwkN1J
         YBuJNvBvqFK+U2OBYtdEDRET421ER/FiRZX9O57BWF7dULY0kHS4S++wz+HQeRvUziZu
         hF/1i9xd/jiu/Ag2BCk2YZvJxQTW/64VvDo+o3+6+Goau1Vmg27q7rLBNyPe7Rdvtun5
         G/rvEYwxYHJePFiq1nVMUhN9aN6nN/ywx3RMXJ2m7Bkim6nS4LmmEO3xzAOKhpkiQNhQ
         AaOnk85cMgvJHNNL4ga2p6kYd2Fxx1Z9FMNvgww6ZgzYmlws33cQDzzzwSV8KRN2yxo4
         FUnQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6gLatJ7YSw6tGVZ6d0yr0uh4RzjoBQykLe7R61lwFAB7g9WCwVkxkAxtMC8wgpkeHv+bHeyLTSEHd@vger.kernel.org
X-Gm-Message-State: AOJu0YxQPop4dDc6WHlRbfghR/qV2rWHux3bvReBdeZ53KPRaETfA42n
	VizLQrjJt0OwlTm3z0eND1WiyeR2uN5kZm1/QUSf6n6J7mhulGrwB6pg
X-Gm-Gg: ASbGnctgLOffnkRuO4LIvTkoiiBIr1KLh6jNWsdEn0P6arOCEAtBMGR/0C6H77cHnph
	q0HVLx/buB+hmHFcsDAfUwmh1LHRtaGi/V1T5856q1ngmA5HZTBwbX4nobtYCKhIj/+mpiUk53v
	Ng5NYZLHTvSyVVOUTuHOFg2hA1toyLLTlFSc5f3CdDhZ4nAs3eO76hYTFjkRC0cgQ69QQPK5T78
	ddsqK7rIuvm9IyClYmZIQ4iCMww6xIZi7mpwkZLxwmPXz3Wx2L2QBxDgBlFCGyvNlpLNUBJYX96
	EgyU8hU9qBXu3rPHvtM3oVwKhEYbCyZd//YJu/kKQkhuiAeinL1LrmXX+vyOniLqt2zZ9llJYnp
	oYBtvsNSHoxLb7eVpL2xtX/8+YeuxX+XoxyMr
X-Google-Smtp-Source: AGHT+IG/vuR/CAo50CO49IE9FciQlvcGqdjye9qI1zbG5s4qjXYiiVKt3c5dUTv9WyX4imP3L+OHVQ==
X-Received: by 2002:a05:6000:26c9:b0:3eb:5e99:cbd3 with SMTP id ffacd0b85a97d-40e46514db2mr8969382f8f.2.1758968397541;
        Sat, 27 Sep 2025 03:19:57 -0700 (PDT)
Received: from builder.. ([2001:9e8:f11a:4416:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e32c31df7sm53416435e9.4.2025.09.27.03.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 03:19:57 -0700 (PDT)
From: Jonas Jelonek <jelonek.jonas@gmail.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Andi Shyti <andi.shyti@kernel.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Stockhausen <markus.stockhausen@gmx.de>,
	Sven Eckelmann <sven@narfation.org>,
	Harshal Gohel <hg@simonwunderlich.de>,
	Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: [PATCH v8 7/9] i2c: rtl9300: use scoped guard instead of explicit lock/unlock
Date: Sat, 27 Sep 2025 10:19:29 +0000
Message-ID: <20250927101931.71575-8-jelonek.jonas@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250927101931.71575-1-jelonek.jonas@gmail.com>
References: <20250927101931.71575-1-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the scoped guard infrastructure which unlocks a mutex automatically
when the guard goes out of scope, instead of explicit lock and unlock.
This simplifies the code and control flow in rtl9300_i2c_smbus_xfer and
removes the need of using goto in error cases to unlock before
returning.

Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>
Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Tested-by: Chris Packham <chris.packham@alliedtelesis.co.nz> # On RTL9302C based board
Tested-by: Markus Stockhausen <markus.stockhausen@gmx.de>
---
 drivers/i2c/busses/i2c-rtl9300.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rtl9300.c b/drivers/i2c/busses/i2c-rtl9300.c
index fb3ebbd46a18..c67463228604 100644
--- a/drivers/i2c/busses/i2c-rtl9300.c
+++ b/drivers/i2c/busses/i2c-rtl9300.c
@@ -72,6 +72,8 @@ struct rtl9300_i2c {
 	struct mutex lock;
 };
 
+DEFINE_GUARD(rtl9300_i2c, struct rtl9300_i2c *, mutex_lock(&_T->lock), mutex_unlock(&_T->lock))
+
 enum rtl9300_i2c_xfer_type {
 	RTL9300_I2C_XFER_BYTE,
 	RTL9300_I2C_XFER_WORD,
@@ -283,11 +285,11 @@ static int rtl9300_i2c_smbus_xfer(struct i2c_adapter *adap, u16 addr, unsigned s
 	if (addr > 0x7f)
 		return -EINVAL;
 
-	mutex_lock(&i2c->lock);
+	guard(rtl9300_i2c)(i2c);
 
 	ret = rtl9300_i2c_config_chan(i2c, chan);
 	if (ret)
-		goto out_unlock;
+		return ret;
 
 	xfer.dev_addr = addr & 0x7f;
 	xfer.write = (read_write == I2C_SMBUS_WRITE);
@@ -324,20 +326,14 @@ static int rtl9300_i2c_smbus_xfer(struct i2c_adapter *adap, u16 addr, unsigned s
 		break;
 	default:
 		dev_err(&adap->dev, "Unsupported transaction %d\n", size);
-		ret = -EOPNOTSUPP;
-		goto out_unlock;
+		return -EOPNOTSUPP;
 	}
 
 	ret = rtl9300_i2c_prepare_xfer(i2c, &xfer);
 	if (ret)
-		goto out_unlock;
-
-	ret = rtl9300_i2c_do_xfer(i2c, &xfer);
-
-out_unlock:
-	mutex_unlock(&i2c->lock);
+		return ret;
 
-	return ret;
+	return rtl9300_i2c_do_xfer(i2c, &xfer);
 }
 
 static u32 rtl9300_i2c_func(struct i2c_adapter *a)
-- 
2.48.1


