Return-Path: <devicetree+bounces-222809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CFBBAD2F6
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 16:32:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A9607AC581
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73D62F5305;
	Tue, 30 Sep 2025 14:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="uo99jEBb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0587E1B4156
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759242757; cv=none; b=D9vKRhVBgXMvh5B1GcrCX7nqBdEQmmIKkKNrMnJOS3f9SktbiVFeV/sQyyCdn9TTAcOhKVO8m0Q2fYC173uTbttx2Y8wY3Cj2peGBGw9khhMuChEb6R2YLHgKsKlnJ/tyjuVemfXi8nHXR+/rPHER2d7hW+PurNkHn8WkH/n73M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759242757; c=relaxed/simple;
	bh=trtFIVQ7skIm+AJ2uSYPYV1+QuWRN+OapOx2C9yTkv8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kYfP1LPpImtQp9G8RNxNG13NnBR/Ca2tAGDulzsoIGXw7guz4Pg4Eu4cMEkJkznoM/2m4IrN15nwiTvSMml8X5a9vog2O2HCnHHjf9XenOkj3VPOLndFBVal6K8JZ0OoHi2LiHE41UxC8fUNACdjwGhzZD/wiImPzcevinV6WTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=uo99jEBb; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6366d48d8ccso1242899a12.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759242753; x=1759847553; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1XGzvIYD2K0dKmTD5NLqz2HHH1fk0VmQ6ZCiFWN/CWQ=;
        b=uo99jEBb//E6n4KlO+0QKBYQJb6XRQl1vJxtpInYFxpMOYsa3pKkSd0e8ODPCrFxUK
         u4LIUE3V1hdZ1PZwH2cL0ArZnkF7BeSj7SJ6ewamd7HMsFI1fw2po+VACQJVKNYSz/lE
         LBPv7pWLdJ1/SCv+6MhCuPbXWNjoKsd6M4YUtTOnjR1xcNMABIb8c2eozGP7a06XuA7R
         S8R/vC7/rWCmEYBnpDwhTyT2e+b/VmpowgGVLWnsSghpmREeTPnva89w/bGAkuPXI1P6
         MjYHbb6T7ita6H7ydohm5Bhn0yJLbF0hAfoySuAjtzeNFNHI+x2pvuZ2kYxZsfI/AcN1
         10gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759242753; x=1759847553;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1XGzvIYD2K0dKmTD5NLqz2HHH1fk0VmQ6ZCiFWN/CWQ=;
        b=jYiaxdFtMzrOoEsAUaDXxxmz1WDInmHFrlVlWKdc/PPtXiOTgPITXCrDUE4d2tEi/1
         zbY4tbR7YYQmuqwk1bKgNQbAmDOgI+NhJkEMySe9jN7vlySuIUOLlBkG5TYai5ier9ON
         4+5d+xG6TP7rLxUEhl8VbJdjoKdgrK1zOxTXKz9HGvHePgt8pxsOJD8dGBnhn7JkUZqw
         VLb/x1luvXyyAI8YUrtbF9P+kGfAEX0oMlQV67w1nDxyUaXoUhc3xfPm7A0QpdBqHLc+
         NLiw2QWJ4HvVYHNRclyLFf4/bOeVHrKjUfOxdNLgK1II6vUWBGEoAED6ttowkEY4VwWX
         FhNQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/ZtWoOLVtq9GxtWDokTFVSEzenET2H+L4zmjEpG4DdMiQOFHdXl3/PvMTKLCE861IZmftx9gHDXX2@vger.kernel.org
X-Gm-Message-State: AOJu0YzuV76mq7RM401dWRtaMwICyjg2fRhN33N7+g5rhsMbUqkj+8Va
	Hc1TtzfMUOV0f45IJ9QqB06KH89M8zdc4luJ9bAA4exwlyzVWEc/61SiIAoIs4OrylQ=
X-Gm-Gg: ASbGncslGTf337wa0tHpDA0FP8EidRV216tpr32qMybYihrlHQDSDv79Dqm7oufwENu
	8s7vJC/W/+0oXRT3VifHpBzQt6uBx6yQicwvTmZa5Cjs4x0EvxBhKlOXo2W2Ndn3kJIcojAk1pl
	u38vIkqg8APtXbTtsM+goAuAuEWhugaxgqYpAftszjriS/uPs9lfV/DCFIJ3WGn++uBI1+9w+/U
	rQ3e0UTB7SC6+ExJTiHrIbJkbcsPKN6vCAStTuCz/UZyFTPXO36n7mD4y/YBSWoJFxcgyb8/m0v
	rxQhprGGrQKb3UCfsmU+DQVS104ag5A1+ddZ8yitxK6P8PvsO75mMEVX6vuG+GI/8hmu/bEtxIz
	LijA9IEN/8dnotcmV1Ane1W3mzIGw7kn9fjzz8DkSK+WUVo6OVKDDz0KIoxYGVXhip1Q5ljhnkl
	GZez+/RSJilO9ouZjRoa4PF99fA6AL
X-Google-Smtp-Source: AGHT+IG8lOLegfuz9sdLqi92zTTH2vZJK6klR6+7kLs717bzPyf9qtgelOMxZ0NsFbtzUNaLIfkVwQ==
X-Received: by 2002:a17:907:d14:b0:b46:8bad:6960 with SMTP id a640c23a62f3a-b468bad6d6dmr66677666b.31.1759242753382;
        Tue, 30 Sep 2025 07:32:33 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3dc2cf61dbsm499858466b.29.2025.09.30.07.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 07:32:33 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/6] Further bringup of SHIFTphone 8
Date: Tue, 30 Sep 2025 16:32:18 +0200
Message-Id: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPLp22gC/x2MSQqAMAwAv1JythBX1K+IB5dUc6klbUUo/t3ia
 ZjDTAJPwuRhVAmEbvZ82SxloWA7F3uQ5j07VFi1ONSorxBItIkSzsxV2B7RaTNQ1+DWIPYEuXV
 Chp//O83v+wGrc7SkZwAAAA==
X-Change-ID: 20250930-otter-further-bringup-f9e640c4008e
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Luca Weiss <luca@lucaweiss.eu>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759242752; l=943;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=trtFIVQ7skIm+AJ2uSYPYV1+QuWRN+OapOx2C9yTkv8=;
 b=qsGVrAkXP50Vge9B0Ma8EEFSVt6ayyjWaeKJa9SCVhcPnmY/baNqhqIzUOMWmIbK4rz7P3d/T
 7qL/hYgE3JQBqzQ5/ScU7vwrY2Q6i2+N8g4TaFEEZH7Zg0usT7M/IJ+
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add some cleanups and fixes to shift-otter, and enable flash LED, RGB
LED and Venus.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Alexander Martinz (4):
      arm64: dts: qcom: qcm6490-shift-otter: Fix sorting and indentation
      arm64: dts: qcom: qcm6490-shift-otter: Remove thermal zone polling delays
      arm64: dts: qcom: qcm6490-shift-otter: Add missing reserved-memory
      arm64: dts: qcom: qcm6490-shift-otter: Enable venus node

Casey Connolly (1):
      arm64: dts: qcom: qcm6490-shift-otter: Enable flash LED

Luca Weiss (1):
      arm64: dts: qcom: qcm6490-shift-otter: Enable RGB LED

 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 75 ++++++++++++++++++++----
 1 file changed, 63 insertions(+), 12 deletions(-)
---
base-commit: 3b9b1f8df454caa453c7fb07689064edb2eda90a
change-id: 20250930-otter-further-bringup-f9e640c4008e

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


