Return-Path: <devicetree+bounces-114808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E88109AD141
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:43:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9370D1F23353
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1E851CBE93;
	Wed, 23 Oct 2024 16:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aNJ22Pmt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6903F1CB530
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729701821; cv=none; b=g+n2bzKEL1p4JgcYT+SdJkPcJoG2jkF6ziypZbujP8OgJt+me3UDEAP/4oop26uuGbjmfDSD9/Cu3+svL69gIwXg+PetrAHHKPtAzuRtS7/P/ZK4wetTDYpP6G88L66okOvSdzzyg0liBNOWHS5zfXpk76cH4OyS7IH3+RzHNKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729701821; c=relaxed/simple;
	bh=RxfX5blHWB2vOVWTbjMj0I4VENZmH0TU0skfFJL7Flk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=J3Ja5DLXGkFHfv/3YnQtwwdNJr8JAD0lLm66Q1pRgageneP/yqNTpsiYnid2RhmelthEPhbRoQXnpOWT74XGG4TLOIOM8NhmShMUYpK5066Crq3wmx1kfiEYcR7zftAPyvIN65+u/LnG4mzPQYPdSDebMYxLE53LCTUBBswcHy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aNJ22Pmt; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7181caa08a3so8919a34.0
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729701819; x=1730306619; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o4SaRfRF23TDik88eWDn0Sxjds9qpbndyUqJVaDs1jk=;
        b=aNJ22PmtbkO1/IvfSKoXA1+Pln2hEkaUkadfOufyfb+IL8PJjFtkn5foAJVXBj/14z
         OYaCvO8uukQiPhdRbU3QmNTMM0pCsSX6IYrNsuqXLZ+eJQvleNgnw5RZdV2MJQ8l7//Z
         DSf2RjDxvc+DLz1WwWGpq65vcQu33sj0+wUPebZvcSnMnEWs7DwNYLp6LMNBWc6xX8nV
         faG7cZGt2+OpWBe3iJcG9WPttBjr4LH/YOdyQNNm/YVXSOxUL6X7u4qZBoL4pRqxq4Nx
         ltM2K5tcGUBz7r8I6eJuAfEqW68EuJ+0UpI4Vp4h+nnlQaPl68M+72oE9xne7YbmkQAS
         GXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729701819; x=1730306619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o4SaRfRF23TDik88eWDn0Sxjds9qpbndyUqJVaDs1jk=;
        b=cWwwh9+KZ3vz1O3eMAzDZpwQfg8q7OkZI3IDyS1W3atceJ5jH2hV3j37jySc5DKijG
         rpWdmHMd6XLiQI3E6dZ34wnMBRbWXAgzKzIJRpgXjZ564WTj79eMAShWvGpb782sOUIF
         aTxgDXvdp8OvSVNqR4U/LlaATwhxWA6rvVjNZd91NmGIJTzPpSw9oUJfEfPweLk47cim
         UWLQRvdtFUhASymvWCvISZgkseemjedoJDJEd11lp+SYHy+1z2ep+9NSzrQEWgF9Y1Nw
         CSlgOQIlAsdLrHV6a540KXRMoCp+Vdtidjg9EuptSk21Ig/hbHSrqN2Y6DwAAOG5HPs0
         5JVg==
X-Gm-Message-State: AOJu0YyXYpRQ0FCdAKzM9LGi2BlGMTaqVK5xdXEt1KKqwgmsdMAQmI/d
	JMMHa8SZ1/wo4vW2EkXhS/olVfbTwPT22DJ1B14e7qn70mIMm+v2Eq65sQ==
X-Google-Smtp-Source: AGHT+IGYMvdYvDGiIN9nPdWWEd0fKUUCMRwg4kw8ZuEVZKTYTD3LTZuB+y1tyIwPvil9qc1iEB+FWQ==
X-Received: by 2002:a05:6830:264b:b0:718:13da:ea98 with SMTP id 46e09a7af769-7184b2bcd5emr2797391a34.15.1729701819481;
        Wed, 23 Oct 2024 09:43:39 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ebb7a0948esm1861367eaf.15.2024.10.23.09.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:43:38 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] Indiedroid Nova Audio/HDMI Updates
Date: Wed, 23 Oct 2024 11:41:02 -0500
Message-ID: <20241023164104.66282-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

This series is for a handful of fixes and updates for the Indiedroid
Nova. This series corrects the device name of the audio card to stop
a kernel log error, and adds support for both the HDMI and GPU (now
that HDMI support has been queued for linux-next).

Chris Morgan (2):
  arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
  arm64: dts: rockchip: Enable HDMI0 and GPU on Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 58 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 1 deletion(-)

-- 
2.43.0


