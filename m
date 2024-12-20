Return-Path: <devicetree+bounces-133053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A82BA9F91BF
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:00:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDB991694A7
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 183EE1C5CC7;
	Fri, 20 Dec 2024 12:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DA/Glhd9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE0C1C3F01
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734696045; cv=none; b=NVdW9tCMPSJm4Q7BGLAHEBf7+FJeKPjNwPFY34we3jnBKG/XojR2tThjp8b8azuizshVL6mWnQzpX58YBITNvytFY6eLA4b8DfyqtbiAM9ZxccF0nhbGwL+h5Pj89RYpRhB+tokoeJaUHYPvkZfaBUwAfdDvbtd31ONnrPhFupU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734696045; c=relaxed/simple;
	bh=WPaf9+f7z78MLonieCgvlL1vPCUCSw7zVcDi3rsIbZg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ToxaMImRExxLoRQGFM9+HCQTfU2HFsec8+xmYp3/N0OZwGCQ8PYXYgu/x4g36Hr3V7gBdj5hpP4yf0mmTl67QRnksabCgJ8Tr5t2NJ3Nd5q00haD+/tk0XKaL7GwKn0HG27IVJn84ENSkKoXJ2nhW4X9ESpONAsh/mJEf0QHkHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DA/Glhd9; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3862d161947so920545f8f.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 04:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734696042; x=1735300842; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oK8cRe+fHR1VWCxiDadEgLXPU4PatzYvmC0Gyvp01XQ=;
        b=DA/Glhd9AegE+3ODTEdAc6Wo61rHy18q7u3W0iaTenVOYe0W1awzolHnCKWwIW5y4I
         5eCpmUt8BRya9kZtuUG4uMrZZCI329i64KY5sMAQ38OVGmxCgH7DO3CWOZwXC1sY81sE
         jUqoPLfZXvyZ/G38kFuzF27EU+DnHWgUKbbgEZdr3/iL6j16YkoNUTZ7V3AX4ANS6mfz
         T0q+nshN3ws9BklaJzhsPghKRS46xb0MR1afW34u57QfjFdRjd/aTDkZE/5ETJB2dpUW
         tms3f3yDPz3VbcOZ2XQiW44tg4dzJ6wj2O3+j3leqQXv3siTiAxLNBoVtkX5xPI001JS
         cD3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734696042; x=1735300842;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oK8cRe+fHR1VWCxiDadEgLXPU4PatzYvmC0Gyvp01XQ=;
        b=dVwAOF2lEpLuj3xO/hj5y6EFurLeX8Mt5R8OZ77hLv29ieTDT8gxorb9TLi+gavcMY
         z95T44CRMLcgiBmE5do75uzalO+H0okGmFS6wnyBo92IfOAoxwGOUCFclwwdxqEhDpMw
         ATvDNDkIkoTpvG/3/GvAUxpvcH1n1bfnUYVI65LKUx+ZdzxY7Npe4whwNR9X2/9oUrew
         eXmrNfD4fcJ8Iffau4/a8yw/H0qVZmb6CvQHZBKo/hDiypaJkyjP6QcF8CIRbEuCZ7Z+
         asdgk7sZuTmB83mIyspMcMX8qKImpMdnNwXvlXiOJOW+X2WKPjEhXmwpks+CRSbpLyZl
         N5/Q==
X-Forwarded-Encrypted: i=1; AJvYcCU6p9GSW2PCzsoXf5IiZ7H3sTsZ9uczRKbyDqcC7eyHYbTT3Fi0qd8jFFQA+pPsnFdBMU6CBMFDXEZt@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj1TMbOHHjjXVpD2RtufyRuns4Q2iA3NkG3jvaHqmgqCYnotxz
	7DHtJZVeLNVC6IpnoP8QmXEzAsunzcTsj6z63I3MpPnI7xW49p8n
X-Gm-Gg: ASbGncvRH5L+s9Ncz/6CzlxeZX9CGC03zOa7+ZpglbKmXRtMzeM/dZlVVhUimdP/bsR
	Cl1cC/QtJ8x1mG8O4XtWiL6ZPMdybwj9e57Q9lrjDenefmWOF8Hae2Y9iqfRcaWXfV9d07IXuI0
	LQ+J0Ply8beBkug5h/ya2kaY2ebh9HtmXkr1jgaUksrftpGXScSPVeny9xF9odxKVLgYMMWPwCQ
	fJ7O3FbCRKbcnyJqXvdZ+OshIZvRnH9m4OcHiZlfnbZefWkyAadJl2UVW//5A6ui7b6FTKMISSZ
	1Z0glxxeEXqDzjdU3CJ3m+5Uu3fiEJNXtGMpWeb9+ud/5PDn2SVlZMdRNXiORA==
X-Google-Smtp-Source: AGHT+IHGkBxd31pWu+xtwPWlWhzqK08a5e0QfwzpYag5XqwWVGkcAgvkQ2m1qj/zjZ9WwhUM2P+gTg==
X-Received: by 2002:a5d:648d:0:b0:388:da10:ff13 with SMTP id ffacd0b85a97d-38a221eaf55mr2906782f8f.21.1734696041476;
        Fri, 20 Dec 2024 04:00:41 -0800 (PST)
Received: from cypher.localdomain (e.b.8.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::8be])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a1c8b830csm3921038f8f.108.2024.12.20.04.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 04:00:41 -0800 (PST)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v2 0/2] Add support for WiFi/BT header on Pine64 A64
Date: Fri, 20 Dec 2024 12:00:29 +0000
Message-ID: <20241220120038.3137248-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the BT and WiFi pins on the WiFi/BT header on the Pine64/Sopine
boards.

Changes in v2:
- drop patch that enables the WiFi module, it'll move to a overlay later

Peter Robinson (2):
  arm64: dts: allwinner: a64: Add WiFi/BT header on Pine64
  arm64: dts: allwinner: a64: Add WiFi/BT header on SoPine

 .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 17 +++++++++++++
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 24 +++++++++++++++++++
 2 files changed, 41 insertions(+)

-- 
2.47.1


