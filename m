Return-Path: <devicetree+bounces-120648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B149C37A1
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 05:54:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 524DBB20C9D
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 04:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D1F56B8C;
	Mon, 11 Nov 2024 04:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KdlFXgC1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A47836B
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 04:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731300864; cv=none; b=LLFW7DCBkwjLHxu0qPm0SruDyktQ8Zvbqlc8h/ZrqaG505H8ilVQJaoxDUFeT+eEeHWpoBXnR27EGjYbPJ7LiTGlFyq/6OPAUV9eHzaPoJqObuAIgv63zy5mdyAw99Y7ZCM6Guil0k4t6uvuwYxXc6sV6JOoK2LCSX6GKc0uj5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731300864; c=relaxed/simple;
	bh=WfU+DCLSFXTTWqY/0GBuu5QNsIrraPKr9is8ul8Bwk4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CvsG1HMZ24voUzd+3o9oo3LZ7OXsOt5u827j1tZSQU8VUfcDcS8/62jEgUJ5hyM+XdrFNbf/KKML46ISej+w/AB5ldurcoVAK8ipgMMY5BP8GvicqSN12S22cIsm36lJHzR2nuCoo34A0KqbwizGhsxv9g7W6n6ArBUmq7Piv4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KdlFXgC1; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7181885ac34so2672586a34.3
        for <devicetree@vger.kernel.org>; Sun, 10 Nov 2024 20:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731300862; x=1731905662; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WfU+DCLSFXTTWqY/0GBuu5QNsIrraPKr9is8ul8Bwk4=;
        b=KdlFXgC1HrLvOc81r0ejuQERWosEhds3AkM42QejeRsF9coX7mIWasJZo0rnoswRR2
         aiFwQkQcXLdW9F9JZ58a+UhjsZswpWFr+HeaarYHjMxt49GFosg+hpJI56xmj7hADnTU
         NyHYpjU9WujaWeU26qxGFBCYcfdZ5WGPWBHfeAaPvze9dR/CNCdy37P8r7TD/X3xp3tX
         VumUMTh1j7umjP0dIOHc3XRw2rt45z9CMUvdMixWIG+tLCdam939hW2Va9oYCeJvM5Uk
         VyPlWyutzmWPr1HhYl3enrZNVXXWisKwUmGPT2BF5xaAn9Y11H2rMw4IxWueJB7NJamx
         zmTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731300862; x=1731905662;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WfU+DCLSFXTTWqY/0GBuu5QNsIrraPKr9is8ul8Bwk4=;
        b=UufB3405Zq3LaTf7X+Jocw/+o3ofXrGpTlGT7/1+vWbRZDDdoZChEeZm14Sd4Rpw2S
         zttC9AGHUEU28/XzrK87TocjdiDmCixAy6XyB92Fe2Qh8FXuFIkMN4boTr9mBtRdTbO0
         jbI2PNY9nE5T6cYC1qkUS0ou+a9fWgn1ZMjG8Dizo4XVltiPbV2trvH4cCIkEW6G9HZF
         hx8dfp9HWsjbOOlB6GKOyBupAAECpVQ1d5lPl13qWphHa66GxByFWu1BxlHH9chMoXH2
         lknSEytWn+U2TlPHFtH4XoyDWMeVMSGK1+ZSsmFg6obWPfxVFo8v+FMfucqN0dESMOTg
         Pc9g==
X-Forwarded-Encrypted: i=1; AJvYcCVyDtc+FstFzVuO4UjJn0Re2w9jx4CYqBs9awFrtdOaP8LxtNGyAVYNStagyo1zIzLw4y+IxGHI6W2u@vger.kernel.org
X-Gm-Message-State: AOJu0YwNWy6cvf1eu9HHBRboqphWLZcO2YjcT+HQZJV8iJh4lz1GzRLE
	sgOot9aeWH7RM+DpgmTddzZ/Y06fR7PBRFCYb1/OBk6RDfHwuHI8
X-Google-Smtp-Source: AGHT+IGYEP2RVp/kn0F2tRfWbBkLhU/d5eH6DoN2VVDURkQxnJobNXAUOv5x8hfqX1Je54ugdEflHw==
X-Received: by 2002:a05:6830:6481:b0:717:d48c:593 with SMTP id 46e09a7af769-71a1c1cd328mr9932310a34.10.1731300862171;
        Sun, 10 Nov 2024 20:54:22 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:9ab7:85ff:fe20:5865])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a107ebd11sm2089439a34.10.2024.11.10.20.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Nov 2024 20:54:21 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/3 v3] arm64: dts: rockchip: Add Orange Pi 5 Max board
Date: Sun, 10 Nov 2024 22:53:21 -0600
Message-ID: <20241111045408.1922-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes in v3:
- Refactor to share common include with Orange Pi 5 Plus

Changes in v2:
- squashed commits together for initial board file

Link to v1: https://lore.kernel.org/linux-rockchip/20241026100310.52679-1-honyuenkwun@gmail.com/

