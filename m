Return-Path: <devicetree+bounces-66807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4768C4CB9
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 09:19:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B66F1F216B0
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 07:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9142AE574;
	Tue, 14 May 2024 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cj6Lkc92"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B4CD304
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 07:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715671193; cv=none; b=txo9VQ+ZfJ7Uozsy4Jmq5Lkng/WGhOhVxCdioM4iEv3ITZauUUpBwSfvMnZHUObzY9TKCZrXqlsZ7aWo80Fo/t6UUvwpH2Ro9rUa3Aim8kVA01TQmD8dXJpgawew8STsBPoWLvqzY5499HM5xCow2Z+WXNCCwP8WTl6Utq2VjaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715671193; c=relaxed/simple;
	bh=85K/vSrEJLCNv5aWdsgAzKFvZDZRmsycnNhFdTQ6M2U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m3ffgEA73st8oCxKQ7yLFiwABTLA4mYS9ceWg+LrHW3O8p+Xwrqlw9mD3PGg3czsOj+mjtRw0HsbfNCf5Ryh/upg1MSz64y9KEgNKmR7AZBqiq4nbmZo/KcqO2V/jLb2KDaHB3fejvbHNOVwIWMTCPgPczTjiMhklpn/itjM8SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cj6Lkc92; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-5f80aa2d4a3so4163868a12.0
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 00:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715671191; x=1716275991; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=85K/vSrEJLCNv5aWdsgAzKFvZDZRmsycnNhFdTQ6M2U=;
        b=cj6Lkc929TAUGb/ZX4pyj3okREbvDXytD0bOC7gXa46OdbaLfkbytMQppSEjWec2D2
         ZC43lCH62H74/m3IKJt6A3NFCh7zxoQRGeUUAB1u5HnN8wj40tWg9nIJlY2cCYaIsrsW
         fAeIJtdaK26yLc3sVVA3vV8dOfHkaOV0DVJqApbOl7Y/sYtTDZlDdE0FredJ5cumC/9k
         FJ4R19vNHNr2+Fh9929eavZ1HXWjgNTX6064wfP1pNx6R+NtpRMGQIb5aIvAAxFw9CZ7
         yEU06IFGdPp6PheUpbOXf81+SWvjeX7xe1N8uh622pLD9fN8vUU8YZ5aXuPpeCcIjpzU
         ujAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715671191; x=1716275991;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=85K/vSrEJLCNv5aWdsgAzKFvZDZRmsycnNhFdTQ6M2U=;
        b=GKVJn18e41UjO2fpQ2D/GJNNxX2JllizRJw4KVtjVbVd6o/V9YdJjz94fW9dXqC6zX
         dSMIFk7bpC71FiUmYhZ9cycLW3V2M3YZWwWqSi6BATjThF+t/v++anl+XIRRf11uZvT6
         qc3MWfAyiry/8+lkfOhBo7eTs2oWLR3JItinW9zJpwvI2H+I8I3cxICe9i478HloxQGc
         ZAxTErVkN2loea3HCCObZDq7mAyl/8sJ91BheCnZqODnFfv7w5eZbZMZR34upOUmgijM
         QFTPk0nNbuMCLgXPGndHiw6Z/lRluxQeHOyUIIDHm/G6JqiZXUE/d4jNlAEQDC85odZz
         5QEg==
X-Forwarded-Encrypted: i=1; AJvYcCUPKITPHaScSCxQvp9Wh42N/WLxxjgbmPUpb8pP2T2w/ELGIwW1iD9HPnJ2L9GT0qePaHMido4tBPmFkBMNtcaTmcENj7I9SVss3A==
X-Gm-Message-State: AOJu0Yz+QB1ewMV/b+nSVQvTgCVvuptbISBWpdeJcy7V9DtzmPRmvSjH
	GuoX4Mud9qcT1CtTbyaWmt0cLQBj40vepNhrG68ivbAM6GtmFm0Ez8nkoHOODH0=
X-Google-Smtp-Source: AGHT+IHyCQy6k+OfAI52dV1DDXrM4AuJBiW9QF/zQKEGktrU1nRmRmSSYNXt/YQc1Wp0/D2ACz11Qw==
X-Received: by 2002:a05:6a20:2447:b0:1af:d9df:d8de with SMTP id adf61e73a8af0-1afde0afc3fmr14147371637.21.1715671191537;
        Tue, 14 May 2024 00:19:51 -0700 (PDT)
Received: from xiaxiShen-ThinkPad.gigstreem.net ([66.160.179.28])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2b628861725sm12028794a91.22.2024.05.14.00.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 00:19:51 -0700 (PDT)
From: Xiaxi Shen <shenxiaxi26@gmail.com>
To: robh@kernel.org
Cc: broonie@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	javier.carrasco.cruz@gmail.com,
	krzk+dt@kernel.org,
	lgirdwood@gmail.com,
	shenxiaxi26@gmail.com,
	skhan@linuxfoundation.org
Subject: Re: Your Feedback on AK4104 Dt-bindings
Date: Tue, 14 May 2024 00:19:48 -0700
Message-Id: <20240514071948.439857-1-shenxiaxi26@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240513191511.GA2975244-robh@kernel.org>
References: <20240513191511.GA2975244-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Rob,

Thanks for your advices, I will follow what you suggested in my following patches.

Best regards,
Xiaxi Shen

