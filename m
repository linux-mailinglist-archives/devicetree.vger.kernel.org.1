Return-Path: <devicetree+bounces-236365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A89C4367B
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 00:32:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D0D1188C2E6
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 23:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D4F222599;
	Sat,  8 Nov 2025 23:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bVx2PyO+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B721F2382
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 23:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762644738; cv=none; b=mLM8tp3tK3eg5PnmHN/BsrXC7T4gsk6hg5x7junkR7efcPUKNTAGRIsw4TY3rNUm4lvW3hxaAiPizKjGIosWHJgjn35RAG2Z+N6PSPeJZpXLCFHsC027xgdT4Mt5VMezx/l45Qhm9W8haZrgPHM6LkxC4FKqa1TpBha5UAstVns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762644738; c=relaxed/simple;
	bh=xKs8wYkk+cdW/0EbGiN/udJKAvFLzY1GYmzjS/+rDlQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bEDvmpHr0loFaBEPMZ8C7492/koNxYgvw6D5t79ZXS37D9Y+lePqgA3lNpvE2ssmLoxJ87FT4lR6Lae7nQ5zshojs24nVhtgxoO9ujYpi2ipZ2MWSVzCb91nZLfZTB7g8clTi1s9OitWWVRYrKPwEzLNPSvYLop/HPiZgIqTnmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bVx2PyO+; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-3410c86070dso1264050a91.1
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 15:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762644736; x=1763249536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S2fxYKfyTmTI/AxonjY+SqxajrG2P4Kjo61uGzKE6W8=;
        b=bVx2PyO+GbGyv/co34eemITrgkf82Ln62iuzCZizLsMg24H5pBex2AdDJ5TqG3r2Si
         KCvBDZRwHOHkDxwkVelYipdWzQzBHRfLfWEFEaJvzdUw5RHdcatL8OBfm6Ug7HtvMOmE
         Dj2EuN0QdjTN9oq703vDEtQpe2zOLOd1KOLke4MFPE/k5z+uiAxcSqoNxw3Ej/9LnGyc
         J+YHERMJzscwaDOxHApjMPjo04bq8M5r3okSo6e9S19B5M9trKDjm9Kv1fcwS0DxB3AI
         +8iRlFgmkWHeumpAG1Y2g7/7vqDYCYKu4sJKHqeE/PlZJ9QRB0KEbl2mZUjWM/dGmKtg
         3mhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762644736; x=1763249536;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S2fxYKfyTmTI/AxonjY+SqxajrG2P4Kjo61uGzKE6W8=;
        b=usMbP2ow7JeSfShW6Gc9+eeuWG3qBZV2s/sKaIKPsZsCM1gYHnYJlQ1Bcy8F1bIRSA
         ItrxHKgkUJda2Jguzgk0KqADYBlmSbuzBQZfzuGLLO0qpZXgisoBssyGzlMVDFp7PJ99
         kpF2IhYyTKBkuVgcXytVho9iCduJLwH0/3TaHaOPQ7Sd9pjwOJIv05XmJCT9EuPd+HPy
         pQ6tjyPBcq0SUyhY+S+rM0svdEP58Y4jSZD+c8EbIJNvPT5MesNHPA2rEnaqtX3sXLGH
         JRD12rqv/wpFJR1AE2VCYJJ32J4s9niYHqcly9pz7ZF5nZFEo6pTZ/FAXJhQm0LYSUd8
         hTfg==
X-Forwarded-Encrypted: i=1; AJvYcCVzCyRwar+28Tr52cnxmkK1FiHmaq3SqeSDslqztxod067IeWnh23jcscXieZE9t7GPePTEnlT3da8k@vger.kernel.org
X-Gm-Message-State: AOJu0YxfdpGG6lgNe8EIPfWPEoiMiXYV5M1QYuGkDNTEJnQ7vLK2XyOR
	9/mx7mybFucoATaeq2JyWYEtDmY0kiqVe15WSnck4BZsxcX80KcBnbId
X-Gm-Gg: ASbGnct6sJZGaCUG7Ge0d4izbmyVcNuIRwNtadYj6eYk+Ww8O5b25CKB+QrwxaSr5uB
	rVDMfxnyoDMUMMi9msj/tH1QqOOnd7H3wMcoGm3IhlSAz2JdSZhWl9hL0zPBKSvDNfE2ArfeoVV
	TKe4q9wdepFWH2wGc6YkWLro9HD+LHD0Mi33EMSRDe0+rv52woFrAG9w0/1pRaKTypFvfRGvuzH
	HynNMZVwPir+qOjcNF+AzC9p0TveIZyY+bAFvcUxGMIo+aP2b283CQvOnQKSRPB85XFjIK8KVlQ
	hs3QZfMpw03eOzPcuuI0pEmv+4L4uA7uCzGOzzKzWVaOI3TjkjL41YCMAcCJu1RUmVRvIvEyG5o
	x9uc7Jb6nqoh9eB8tBlVkv3plmKnr0RHHm65NjKjWS11sL2pxoupJhExOBpCucw8m716bpLtZKE
	Is
X-Google-Smtp-Source: AGHT+IHt0Vn3SiG3I6Pw+8+ukG4cQ6WeXSBHOSQlHyfoi+jjU2LC0v/ov1yYPZ3yv8FjxrEwPlJ0Ug==
X-Received: by 2002:a17:90b:5710:b0:32e:5d87:8abc with SMTP id 98e67ed59e1d1-3436cd0f1f0mr5195603a91.36.1762644736252;
        Sat, 08 Nov 2025 15:32:16 -0800 (PST)
Received: from fedora ([172.59.161.218])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3436d76d382sm1343594a91.0.2025.11.08.15.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 15:32:16 -0800 (PST)
From: Alex Tran <alex.t.tran@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alex Tran <alex.t.tran@gmail.com>
Subject: [PATCH v1 2/2] dt-bindings: media: i2c: et8ek8: document missing crc as optional property
Date: Sat,  8 Nov 2025 15:32:00 -0800
Message-ID: <20251108233200.2068334-1-alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the optional crc property to the endpoint node for the et8ek8 sensor.
This property enables CRC checksums for the sensor bus and was added to
match the new driver support for reading it from the device tree.

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 .../devicetree/bindings/media/i2c/toshiba,et8ek8.txt        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
index 8d8e40c56..5fd30f59b 100644
--- a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
+++ b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
@@ -30,6 +30,12 @@ Endpoint node mandatory properties
 - remote-endpoint: A phandle to the bus receiver's endpoint node.
 
 
+Endpoint node optional properties
+---------------------------------
+
+- crc: Enable CRC checksums.
+
+
 Example
 -------
 
-- 
2.51.0


