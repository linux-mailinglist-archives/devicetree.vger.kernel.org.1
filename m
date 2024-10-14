Return-Path: <devicetree+bounces-111001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B931899C86E
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 13:14:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D79628464D
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193971AB517;
	Mon, 14 Oct 2024 11:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Yj0BzIXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE911AAE0D
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 11:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728904281; cv=none; b=UyyUDHacIYZ6iS1/pQjTI8UnRca1bS5S1SmXfEDHTsTiYgAzFFGPtYZkpWYB+ueqjb+6WYniQrfgl96src0pX/k0bL7CrSBabv0umaxqNo6vMUaFz1iSIW1Jh2JcCv9C28HmYwy30OzQ3wwhKFkpeZtDT1FjWldcQ8ZnlRsGS5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728904281; c=relaxed/simple;
	bh=N6k3MjZRAPFaEyNmKluQmUs0Nkj2AbeajjN9nA+46hU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R9jWBGARiU3TJZ0ZjOy9Bcx8OBDcbo3JgULeoT3E++LIjRu+YRLLzcaaDOLORo9Rh3YK0ws3PSJiASMXiwiiPNlayTfWTyoQyfSBJj2w072QFzpYNhnyjIJMDaIjfolYaMhosNHLW4hPGdY/q2jhaA42SG+8O0iY26K8qOLV6Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Yj0BzIXs; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-20ce5e3b116so6524415ad.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 04:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728904276; x=1729509076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/b5fPLxKnk8ixP+B6dTshS60Kk9g27O3Ki9J1RjhYRQ=;
        b=Yj0BzIXswpHGQe8C5pmvGQvUPGy+Xs2i5kidw7INYMVykv27wfyfrwPqGHGDqFTmf9
         Xh/Cf8XBC2Y/kJvda2IMaHYb+g7hal3KP0sXzJGcNi0TH7wSxtPFjx4iyqgDaWr6SmmC
         VKP5iyTuQkNAQ1DNlr8q2L6M7wb5I+9g8qZl0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728904276; x=1729509076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/b5fPLxKnk8ixP+B6dTshS60Kk9g27O3Ki9J1RjhYRQ=;
        b=ba8aLSmzFdQ+93HN211wMTVUkldQ7Nchy9TBtz1uL5Ql6cbiIrKMNlPJM/yHzLdE2N
         p8aYxOah3qKoDM0pprrqWKPg9baDJ8LBowUM1LoWHnc9369A5CmJKAtpd6bU51lk9Mgq
         IdbWA2rOAkWmgHpTNDLBEqzBCZf14+E7nAXUkOoBUOcGaS8mUWG7sbsUSveEoA2hEu8I
         X0U4QmEmcQ3A1O0iI7/HK/44SyKfPr6+3+5sME3fsJXNfjBIZeYaRYS1B4zHWioS26WQ
         DuJ+tRpix8ef6+27FVwab3OgHiUQEYc3/zj+QJLcoWtHLyaOYS8cR/C4zWhEc00f9+Ra
         gw8w==
X-Forwarded-Encrypted: i=1; AJvYcCVAHaGl77Ao+ofe3sZ7R5aXR8vnukeoMRFvEBFdQPAUfAE6ew3s3BjbzQo2x/jv9EEAkFYG+9D+Q9/U@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd2taBOkmLh8BiIe2DDaaRRtArqK+EWI3cuy5cDgn9DCYr9RJy
	ykaOKO7lPLXIV/Or8MTODB/4oX4ktqIxQa/olqHLmLmWqh+RGLkQV+Tv+zWaeQ==
X-Google-Smtp-Source: AGHT+IFDRAoJ7Z63lA0MZEZ+CdOcVFusjWYuKIU0aUZ+jje6f2o/eSKpoKgYTvF5qObMc6WriIpZSA==
X-Received: by 2002:a17:902:d48f:b0:20c:f9ec:cd8a with SMTP id d9443c01a7336-20cf9eccfcfmr31699065ad.7.1728904275775;
        Mon, 14 Oct 2024 04:11:15 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:4907:d52a:1a1a:58d0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc3e6fcsm63858285ad.118.2024.10.14.04.11.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:11:15 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v4 1/9] arm64: dts: mediatek: mt8188: Assign GCE aliases
Date: Mon, 14 Oct 2024 19:09:23 +0800
Message-ID: <20241014111053.2294519-2-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
In-Reply-To: <20241014111053.2294519-1-fshao@chromium.org>
References: <20241014111053.2294519-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Create and assign aliases for the MediaTek GCE mailboxes.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index bf15ac9901da..10195a4e4e9d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -23,6 +23,11 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		gce0 = &gce0;
+		gce1 = &gce1;
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.47.0.rc1.288.g06298d1525-goog


