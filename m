Return-Path: <devicetree+bounces-137826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD60A0ABCD
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 21:27:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CC8F163A41
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 20:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19A415573A;
	Sun, 12 Jan 2025 20:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mEsCpbew"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4700B153BD7;
	Sun, 12 Jan 2025 20:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736713633; cv=none; b=r072MosV8XENJMqLfuMgvTH0AqyR38ndNDkhCQSwHfF5SAain2zFWRRMta7AotLgldPyI6OsL2Cw/I91KKX4EetwkqT1dYHnzHfF8fm6cETDywsKZ6lXUtzN7/Fymy2I6zGcyrchfvtT8rxXNh1u1hiMtflnKGwXfotKYaiMNp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736713633; c=relaxed/simple;
	bh=KJYZhiH1O+bZsc5L8JaNjFOdX3p057BdE/GBSMGoaaw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gdJDdpLubz4oUUdJbboShDCzNmjW51KdfGWwLZLkepkGduVNYTSE+94YKq5nStD+cMczUeLu6aprsPc+/oWjG2UrqSJ1E/PEAl+3yzVhuv+KnPMEj/OMwzpufJ+BAzwqa8roO+KbWcRowRzl83J7+jKoGmp8E6zJBZeBJmhJYDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mEsCpbew; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e545c1e8a15so5465366276.1;
        Sun, 12 Jan 2025 12:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736713631; x=1737318431; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KJYZhiH1O+bZsc5L8JaNjFOdX3p057BdE/GBSMGoaaw=;
        b=mEsCpbewGzHcDNGkVS6LnAIWCt25fMoNMxMpB3DrWYv327iG9mVTn5lbqar7GWkVC+
         AfLWT8vPuNXdFbvWXe4HNITiVcMdxxZ7dIxWk6ZtTMsjxFMv/wfO4mOL4YrqXB3MaOY9
         sfa3eJuWtd2uDK57H8z6WLTz97OLDgPjHcmTVvQL8YIwuPPrPgJRxpjpq4rX0HFKrZ9f
         lcIOVVI5xR9KAOJP8Nk2qDoqLexfdvW9Hj4c1Uk8TsEWMcEy5DPliwrfIaLyMporMDBM
         kYIpRUpLyF2Jm4ZLZYnisiXasBBtDcIoAQZB3L3jp67mIxf60wfTGD7l2NwREsRDpWRz
         S6mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736713631; x=1737318431;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KJYZhiH1O+bZsc5L8JaNjFOdX3p057BdE/GBSMGoaaw=;
        b=RDpxhGv4baXtSBotJLEyVjmtfJh0wtchyi95uCQfgHgHv5zy8xaBwMdEnFhnoZu+On
         JUuxP9rvbPGRS9+Gp3aYjQ14v40g2mTRGFoMwcR8JlGai5sYbOVEZMZ7ZyCPPdPzOnw5
         YgQhgQVUlbkR63RWtxXnzm7CngqOO4+M1IiEmlEQMhDy4Fa5ICMwzOfvbZxWxgyEwR/t
         Vd3JrrFuo0QpUipkJ7st9Nj+IjZQTq8yKqe/uXVEeiUylfVnXOayydgvWbvQgnyLn6Xu
         9zIVRFlo6C0f7f3E8FD8pmypJEjB1OGmGYD5JlpPefyJZmCjXEyE2E4GOOHER2AAWkKE
         5nag==
X-Forwarded-Encrypted: i=1; AJvYcCU/1HVIkHywEdgcjFqDH48hiO0m2GLp5nMpXMdQuojrHJ7AouZE+gvICPuj5dWeuh9Itseu7k+e5fushs/K@vger.kernel.org, AJvYcCVmHJWIgWMj+B/Bva5ZsadZfzWFw9WhP5DDN+OmG90yffJDJ2hzELe5ZahH3uJ90zeiqVD21kQv+ab+@vger.kernel.org
X-Gm-Message-State: AOJu0YyYuLIzxzuVIgYY53Jfi/fjWDReiq+1RX2WcxHt5lwy8H7K5Pvh
	/Foc2QV83COP6+Y5+d8UjLSsqNFo8YbNvjXniOssIoAWgjNkF+Gvn+b3FPNvBhgXhmGgIMMhQnJ
	Beg9zbYbNAkfemKQ/SD4npDZOSzU=
X-Gm-Gg: ASbGncuiDaBgT6G8M/tH5DrwGme7T1qSmmCZFb0IKBSuCf61zMhYaT5VpCbnosn/b00
	nNZ60HBUopQ48RbrOiA6T+3oP3UhKbf1hJ/V2KmA=
X-Google-Smtp-Source: AGHT+IGZaC/OlbRbsNvYaMYjxRBnL+2yYyfV0AIbRIBDdrnHp3fqv3tpczf0rasT8ptHihHYsOZGlHD6v1QG5rnyZfw=
X-Received: by 2002:a05:690c:c8c:b0:6f1:5591:2c6a with SMTP id
 00721157ae682-6f5311ef109mr147703997b3.3.1736713631265; Sun, 12 Jan 2025
 12:27:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241126-adpdrm-v2-0-c90485336c09@gmail.com> <20241126-adpdrm-v2-3-c90485336c09@gmail.com>
 <pokf4zrrm7utx4dlq7sfob3pb4m2dh47eyw2g345tvh75x3s2s@ylajym3brih3>
 <CAMT+MTTGtmMvbPy7HvTQ+AdF_X4dTcfXV5n=krm414MnXYqxjg@mail.gmail.com> <qowuzrx7s76r3soelwcvlbnksvstlpdind5xxejuqeeohjzsbh@evmuvvzxp3qh>
In-Reply-To: <qowuzrx7s76r3soelwcvlbnksvstlpdind5xxejuqeeohjzsbh@evmuvvzxp3qh>
From: Sasha Finkelstein <fnkl.kernel@gmail.com>
Date: Sun, 12 Jan 2025 21:27:00 +0100
X-Gm-Features: AbW1kvY_ntIDfWPnmKQupEStaGCx1YY-X1bjoh686czSMiCWmY8vjsKf9KrYKtY
Message-ID: <CAMT+MTTOeyAKUDYYwN+hO_QVBhPK4w7cktx5LQyrxrfDTq-wcw@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] drm: panel: Add a panel driver for the Summit display
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Nick Chan <towinchenmi@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 30 Nov 2024 at 12:36, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
> Please add BL_CORE_SUSPENDRESUME option to the backlight device.
> But interestingly enough, none of the panels set that flag.

It appears that setting that option re-orders something in the resume process
in such a way that the entire display locks up and becomes unusable until
the machine is rebooted. I will be sending v3 without this change.

