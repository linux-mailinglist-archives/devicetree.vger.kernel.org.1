Return-Path: <devicetree+bounces-218673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6429B83013
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 07:23:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF8CC4A3FC1
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 05:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3FA29D267;
	Thu, 18 Sep 2025 05:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UTMtazp4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B293281375
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758172989; cv=none; b=Fpm8Rl56JagQ1jQADRwL/iOZXzJ+GrOnmr9g3BhwrsJmO/EWbccfjUkrb9ZUSOFLTqGu0JonwGlBTRZP+YQhcB3Qgl6I5ogTgFiQDJ9izWbAmX9AyybYdD29pad6ufPO3SYR6pyAyu5MlDOZPm3Dpd7cwNIP6jtz8DRDQPXMyVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758172989; c=relaxed/simple;
	bh=TLOVWO8z3YKEVC/nG7+rCJR0ydpCskrgzD5ovtmPwE0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NrttBMQGz3rrZAnteK/n/51P+Q5QWztb6I3aLIH0jC2ZyGstF/s3AcJ30wvvbvwJDd/saYo3tbeiuGXl+Gqic9Yg++6uNSJ16g9djKe7F3dcdv2mK5zy3VYVYYKcdznniuKCvjnGbRwzXwKRBUph9ravDFQZP7+U+kz6zHNhVaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UTMtazp4; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-3304dd2f119so364407a91.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 22:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758172987; x=1758777787; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TLOVWO8z3YKEVC/nG7+rCJR0ydpCskrgzD5ovtmPwE0=;
        b=UTMtazp4XYHPTLcZ0zHHCcpO0xHIRSB2lMJPxIoGzrvIt9EoD96ld88ffOtZgirzuD
         ZD5KbZbNZ9a/L2mqKGWCHxw22nWAy/BwQYf69/jnVi7F764hg+b3pOCU4aP6e9oOkNMw
         cmhR/HBpzMnsq1Nweon1AxOgBvXoWtxUy3msrsuKeGYbVLA5cD++CM9tg+Zt3bg2ajHc
         XspbdBSW97T/9Ef1jzffWN4ZwzX1vQJBHe7WNzDScnJISR0AkO4TlyLozbZ+pkxZE2Re
         VmQBX7wt/fjsmIyFlNYk25ZSPXyvoIDlXGzx1xthR9h8NT9IBPWhZmjQ2HFZRs5oDnkx
         RtDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758172987; x=1758777787;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TLOVWO8z3YKEVC/nG7+rCJR0ydpCskrgzD5ovtmPwE0=;
        b=ubJKhmYd5tz09zgdQw4sUV8xxfIG1JGjUQYuxuO5D3BcLFAWQKJHshB2Bqu3AD8HhZ
         4XDnRc6iMnpSkJv1hom71TxeWagCoxmxSsop54E4XLLkoPmRLEfrncDmRGtu8jhfHaxR
         qYoeEh0OkeeAnm6uf9VtDJ4rS2m/HHVXrmgD9MIvOQ+gUaEK5BnNpgc3PU+nKOJh67vm
         mPLOHFiumb4On/sPzSrlzL6P/d5VhGe7RVxKUnuFMIOTjKSRtMakr2DqZ5L57aOFxRwQ
         TWbURxVOaP5gzqpy7VkBPfr4YnQaoAtXzqgh8AYxTgM7pZ/I1nlQGNp7raAsBifPX1A/
         JkWg==
X-Forwarded-Encrypted: i=1; AJvYcCW/jtQC05Xemwl3GcD9RqTjOcetvBhSZLwsTqXzI2FD/f9VB2yDNwz8TdSAEm37FilIDfHSWHOk7GSx@vger.kernel.org
X-Gm-Message-State: AOJu0YwPB43E+52yM49E9VG8BunQvQQtzBHp67RztUWRgt/aQK+ioSED
	JlOVFtA5eJxqbakqCsULnBKc5l5PjbXeUeARv9XasDCec1kgRS41d9JT
X-Gm-Gg: ASbGncu6H71eR/BIpovHnVsiENKVgVbI+1CZbzGyAzFMe86FlQtHMfRVZiFew8XIiOx
	AEsMVETtIJJa1Q8nNkXUMOxfP6iZnqsCOCJZIOoMqesoSex2qa0dOu7pgfKVhNOxflO0c0C/lB1
	CNTtMCOzGUWqxeq6N2IslJ8l3XF2B1NrHO8xzk5p3OmgvqPvp7Mu7v7vyXaOEmTgt7wyjPTmEox
	tOMtyHjQxSxbiWlHGZuOwhkZwXbf3MF9BhDcxCjIaMEAlJ5haT26L4vdLPmE2FGxU3uGHYJw6/7
	TtsEmZjIOrc4Ktz/5tmepWBIHOCendKUs/0Gi+eqygiGqUl2GdG4Y+wpCedYemz7TkebSLczy7Z
	pu4kH351LnL9Juq0/h/iy6aC9+pW5M1xZ+K/QWTTHsyP3gEGQdPX4qssHxU4fPMAT
X-Google-Smtp-Source: AGHT+IHrJelkeadXxxJ309pMmd78F2SZWNn8q0FOA+TBRg4iz1HVjQgFNx8SwnfeBgb2w12a3cnNUQ==
X-Received: by 2002:a17:90b:4ccb:b0:32b:6820:6509 with SMTP id 98e67ed59e1d1-32ee3ef0a33mr5635940a91.9.1758172987275;
        Wed, 17 Sep 2025 22:23:07 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([49.249.92.90])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32ec9e66b02sm2118449a91.10.2025.09.17.22.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 22:23:07 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: dmitry.baryshkov@oss.qualcomm.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	tessolveupstream@gmail.com,
	tingweiz@qti.qualcomm.com
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add support for QCS615 talos evk board
Date: Thu, 18 Sep 2025 10:53:01 +0530
Message-Id: <20250918052301.2583623-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <f3y4ibzkyfdub6gszoliaenuiudfrtqfr5u4zqpibfdr44hr7l@z5ap4odsoiti>
References: <f3y4ibzkyfdub6gszoliaenuiudfrtqfr5u4zqpibfdr44hr7l@z5ap4odsoiti>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Thank you for the suggestion.

Sure, I will update the commit message in v2 to mention
that the QCS615 talos-evk uses a Quectel AF68E module
(PCIe for WiFi and UART for Bluetooth), which is
different from the RIDE platform.

