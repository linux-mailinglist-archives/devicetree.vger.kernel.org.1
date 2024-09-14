Return-Path: <devicetree+bounces-102971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F359790DE
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 15:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 663A1284A3D
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 13:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21FF1CF2B5;
	Sat, 14 Sep 2024 13:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iwEuhRE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C4E1DDEA
	for <devicetree@vger.kernel.org>; Sat, 14 Sep 2024 13:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726319871; cv=none; b=Qdy+w7XeAdoUaH5FaFer/FBunfzbSyXvyFrvDNobRGTXfH7Zr8vY9gLjWtlkcwTyHorQAe6lsc2INZAG/Lii+SYR2uj1UDVDv7Uo8NQQVboMdFBUfq5KlWKVh9eFyLylobde9FWgztzJW3VM6i2gBsQfqPNIu8+P8eqX/12dvxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726319871; c=relaxed/simple;
	bh=wrOVaiSqOCYUOmjkJLoH4H0ZPZBbtr/vpUF2y1/cMVA=;
	h=From:Message-ID:To:Subject:Date:MIME-Version:Content-Type; b=SspP1CfP3VjFicgrz+vl2Q2++ZROxSLtozJaLMJRZulGu36IScwZsOx12BBKsu2RqPx9uA8daH+AUIShoSsHnPjzUgq96QUZDnlChm6hqLy/A1w9Jw/peehAodrrXIo77WPaAshRZsWmN2SBz3puUk4IOqrj8Y9KkuFTrLbItYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iwEuhRE5; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-718d91eef2eso1954552b3a.1
        for <devicetree@vger.kernel.org>; Sat, 14 Sep 2024 06:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726319869; x=1726924669; darn=vger.kernel.org;
        h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wrOVaiSqOCYUOmjkJLoH4H0ZPZBbtr/vpUF2y1/cMVA=;
        b=iwEuhRE5SNfuieEhXoCEYR7YsR12FdFNb/0nq7APr99hZm6lzQAt77eCiFY6cx/JvR
         rToZ+S4+lkfhXkNy+eLvkpeZ1l+BQx7N8GUBTp+dmeU1NZ9mp0fZ4TW7hYtzkLigmoX3
         T8KrOgX1edK+rxRQdyezQJPRsdkjAAqaieaFqfqCazkyo4OFMWCtLce4dB2T1treVEBM
         GckWwl5o370TVJcm2Vs2CSvxIcmXNv286bGByCHrjgmdKz7+iuqG4EreuPkL7t+/qIlU
         DGO6iDVX7O1uq9pzpYpmQS8OfUYrD4He9XuTzLATMmQpJGnlcGQcYRg+Ei0KKlK+XUHh
         AYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726319869; x=1726924669;
        h=mime-version:date:subject:to:reply-to:message-id:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wrOVaiSqOCYUOmjkJLoH4H0ZPZBbtr/vpUF2y1/cMVA=;
        b=M/MdrohaPyEeu0xz03ZwEQbp+uAFZ6NAek6/xxF2I9J6N6SGkysPd+7NHe1LaNUuuA
         ZRumyRKUIYDKN64SfuU0PnPVhhjwVXUHmR9GsKls/pPRVpbQJMkz+pJmix4ZL7JxwMds
         WN6qqzovfXVYwYvOdwp41DAFTjK9DJJDVoZz008rF3tXiZyfRvG7iN2s+4+99z8euMvZ
         RYYfNEeJir3mtCZoTvLFm0Y6XLqnqkDpgvRobr+ILftyKzExHjvO+U/Ve1TpFF5AUb7I
         c6fcBZ0K383tX7Wk2Wz1SI7uUcC8cWLpu+1w4SLL/YW+LuQZWtqTwENB2jEM+6yp0fC/
         ur8A==
X-Gm-Message-State: AOJu0Yx/qfCLBwDwI1TQ/AJI9PLjY9BgO7JdaUHW06XXQC/EHoDIAHGv
	P/K3IRg/xAfNWvK9ypg/cZBnZZcGQYesRMiMPJAZneEJFwxHpwK35GfdSg==
X-Google-Smtp-Source: AGHT+IEDbukHVx2DG3GNGXe8MfvmUjQUi3iyZvaV208ZnqrThhO2TsBTyyVZB+vNMw8OlD8Xuy7Wjw==
X-Received: by 2002:a05:6a00:98c:b0:707:fa61:1c6a with SMTP id d2e1a72fcca58-7192643c4c1mr15425647b3a.10.1726319869470;
        Sat, 14 Sep 2024 06:17:49 -0700 (PDT)
Received: from [103.67.163.162] ([103.67.163.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71944aba55fsm977666b3a.80.2024.09.14.06.17.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Sep 2024 06:17:49 -0700 (PDT)
From: Borys Bondar <nairadaw524234@gmail.com>
X-Google-Original-From: Borys Bondar <b_bondar@outlook.com>
Message-ID: <1f5042ecb21ff25942c91a005c42ff692760508b2239e301f9e670f5f36a2a29@mx.google.com>
Reply-To: b_bondar@outlook.com
To: devicetree@vger.kernel.org
Subject: Sept 14 Reply Back
Date: Sat, 14 Sep 2024 09:17:47 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii

Hello,

I hope you're doing well? I have some business opportunities that I believe will be of great interest to you. Please reach out when you have a moment.

Warm regards,
Borys

