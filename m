Return-Path: <devicetree+bounces-251495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E85A0CF3B3E
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:07:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4DABF3014134
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21856339B30;
	Mon,  5 Jan 2026 12:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WfxIXlrT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f74.google.com (mail-wr1-f74.google.com [209.85.221.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF8C338916
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 12:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767616979; cv=none; b=dnQDHBm5ARBLSsgAsZPTPszuQJ3Wod81HzclmApIFin/Itb0KMHtxoyCGNNlNmpMPiHPAIcxcdZqHys2Q3SaAkF/FLFHEsitylLR2eDaW4uTMUJutNRKRxDbeBdrQcWFrvrLqjEBvcumm77KS9dF8grFgV0GZxhROyAosXIv5fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767616979; c=relaxed/simple;
	bh=4/oBY4WT7aE2jyTcFtNUVqaQpyXgwzMdfeb8dG9ZIe8=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=ts5X4aCF7mdrTFr4Vk5CO1OcZxXVXNifWHpDkCWqPC0p1NVi4VC0GRyfqeg4RlHIpEl4slOp321I0VgNXu+XHqLPtCSGcaSvxEN2r2sqRnAQ0ECOiendhKQctew/s98EQMBCRztZsH8cIDjDmnDcUDvanwwComPzL+tpI7OVSKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aliceryhl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WfxIXlrT; arc=none smtp.client-ip=209.85.221.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aliceryhl.bounces.google.com
Received: by mail-wr1-f74.google.com with SMTP id ffacd0b85a97d-430fb8d41acso7320228f8f.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 04:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1767616975; x=1768221775; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=pI5Vra+JsbB1uLqyeKVidrRHg37WdQzY+QroTb3rVuk=;
        b=WfxIXlrTX4J53biTs9lNusJD8UjxD4mOTR/LIhIAqInF3xFwajAN68MtiBP3ul1x7a
         vX265Bds01aOu1HXNm83OXXYx8Ims1iHnXvHdTUSmgiGx+WyjAq+N59wCN47ZUIxN2e2
         Lb2cS9tHkhzOU3LxDj/Ul8j4bm83iGEnlC5NYKVlvZoK4OlJ83ZC7LBxJcfW43T7dXWQ
         uOIN86HeEBcCHr5NXdu1i47mgP/qMJwcSHjDBMkkzw4sfbOGg9Mft6vP0wxMXm8aIA+T
         eOAhs01kFQwfFeJnsPkpIMtwCreNnVECJE8AA1d5m+v9VCvD7vw/C4kRK1YiGxDrGNeS
         HRsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767616975; x=1768221775;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pI5Vra+JsbB1uLqyeKVidrRHg37WdQzY+QroTb3rVuk=;
        b=eoLySnY+Ga/G0/jxjR3+qDm2CBPFus0zYcDpWvLWwlWcVmkwzObzW25I5l6SdFsrNJ
         8IkFLphrZnNC/avMXq/e/MG9tp9+hZzkIxfdPBWeC3P3hCBGmtSStV0vCeF6Z03IG1g6
         WBkZekCJziPNBD6KeEAv71/feN6jx6+r1uBkFUJ/y0DeeVONcJKmY36SCfARKoSQJC3F
         +6RlEC3m8B3TBAUwRONI0kwVUgAqFSZiVlyaa4zHlEpphLQuSmlugQJ2tiQP1VAQQSFn
         big1VRBFKzxfW0qOiwcASZFwyqqKtOOMwe6q9BmU+3XNtgbBN9wQJo5hsfEGhTRix4fy
         9ziw==
X-Forwarded-Encrypted: i=1; AJvYcCX0mkC9eGaOjoaIgMFKzeZpo+UOkvpr/QRfud5HN79XaaReKI2gGOABw+DvH9+uZJbeVcOKzZEcvkQb@vger.kernel.org
X-Gm-Message-State: AOJu0YyyzXl/aFz8ocaG7PXXBzrxQWTK0DvxJ2jcEf85jl0kn96JoWkY
	URof7uyrgiG/bxlnvtJhPXHkQoDIxlwNf6Lb7XD+9Me1DPBzVxUsn2UECtJRxlTOB4SAjB4hguC
	eSPf7sR70QLTjxszrFw==
X-Google-Smtp-Source: AGHT+IFMkcXT4GQf67+ZbJYW4cTUhlnEP0jU3IFLvs3Uw49EFNn6oIhG4fHsXU7Ixu9cU6T58gWgCgWOb4rUH2M=
X-Received: from wrbdr13.prod.google.com ([2002:a5d:5f8d:0:b0:42b:2f58:f220])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6000:2c0a:b0:430:f742:fbc7 with SMTP id ffacd0b85a97d-4324e4cbcafmr69233261f8f.14.1767616975704;
 Mon, 05 Jan 2026 04:42:55 -0800 (PST)
Date: Mon, 05 Jan 2026 12:42:25 +0000
In-Reply-To: <20260105-define-rust-helper-v2-0-51da5f454a67@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20260105-define-rust-helper-v2-0-51da5f454a67@google.com>
X-Developer-Key: i=aliceryhl@google.com; a=openpgp; fpr=49F6C1FAA74960F43A5B86A1EE7A392FDE96209F
X-Developer-Signature: v=1; a=openpgp-sha256; l=818; i=aliceryhl@google.com;
 h=from:subject:message-id; bh=4/oBY4WT7aE2jyTcFtNUVqaQpyXgwzMdfeb8dG9ZIe8=;
 b=owEBbQKS/ZANAwAKAQRYvu5YxjlGAcsmYgBpW7G8x2QCj3mfCK5028s4PpTOP5pUFsUNtpTTS
 1+h5bRMb/aJAjMEAAEKAB0WIQSDkqKUTWQHCvFIvbIEWL7uWMY5RgUCaVuxvAAKCRAEWL7uWMY5
 RlsCD/4lsT7mhuwlE+A9eri7m8sEeWstg0587MwNggZmKpYrWQ0vi5yZ/WbFZ/G/V0dUP9CkucG
 5GrygJ4ABTEF+7P/uMP5NiM8Mx6qY+WgKORdot8Ym9sOmi2yDTP1i+N6NdyAWB+Dgw0rYUYkyiM
 tkIMWGFENh3rAdFhJ9lKd12SVS5Nh7onny6z3kGjxTQwDxEslD2w+RURn9UKsr0aq+B76wbbaAC
 qnL2SfbhVRV21N4BVzqcBMFqxIEO3Aq+o/lxqt+2P8P6rEq6RA0nltGiSrj2vX2VUXVi0yfLAMo
 jcMfMMjyFdEMBxh4+9OukGWVnC73HycQbgTIZmjaLCyo25rt2Y9gW2x7m8BJAt53hjmxj9yBy6+
 SqvlMEYZqr8ZXeuzlPYSKosvqs3NRPfqKagtI1AaSDRaYyAW3HsQR+bPmF3woDDhEogTx8HMZZV
 LHm4DyDImlHlDhzX3JsqxgkXfrsC6GZu5ppKSav/r/mnBZzS7sKqFB9BE0z4ujFQ7jk21MXmXbo
 OYLtzzBVe5RIn/feTCAIF0GI/3FctLWa4Vg7zMnemzbUtIg/CPBM9dXrfzpocxwCeG7Eitoob57
 MGHmPdkzgzKrRM0UqVFbbzfsKjH8NOkQ4WLm9D0jOW2R6BVgnitT7ImbwzuOapWrfqbfwO3ARci 0y6vY6/Kjj+QwpQ==
X-Mailer: b4 0.14.2
Message-ID: <20260105-define-rust-helper-v2-12-51da5f454a67@google.com>
Subject: [PATCH v2 12/27] rust: of: add __rust_helper to helpers
From: Alice Ryhl <aliceryhl@google.com>
To: rust-for-linux@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Alice Ryhl <aliceryhl@google.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"

This is needed to inline these helpers into Rust code.

Reviewed-by: Boqun Feng <boqun.feng@gmail.com>
Reviewed-by: Gary Guo <gary@garyguo.net>
Signed-off-by: Alice Ryhl <aliceryhl@google.com>
---
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
---
 rust/helpers/of.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/rust/helpers/of.c b/rust/helpers/of.c
index 86b51167c913f96b626e55adb51bdac2a9f04f56..8f62ca69e8ba54098343dcef77f5e82e5a3bf497 100644
--- a/rust/helpers/of.c
+++ b/rust/helpers/of.c
@@ -2,7 +2,7 @@
 
 #include <linux/of.h>
 
-bool rust_helper_is_of_node(const struct fwnode_handle *fwnode)
+__rust_helper bool rust_helper_is_of_node(const struct fwnode_handle *fwnode)
 {
 	return is_of_node(fwnode);
 }

-- 
2.52.0.351.gbe84eed79e-goog


