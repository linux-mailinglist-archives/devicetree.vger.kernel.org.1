Return-Path: <devicetree+bounces-35499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B5A83D921
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:15:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0DCB28763B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE8B414016;
	Fri, 26 Jan 2024 11:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DaxRzeNr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C4814265
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 11:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706267700; cv=none; b=fPCFqS1wQXr/1A/mpOowzRYwcn7arsWaeEPYl3jKWWD9LHRyIqSHyjBq8gis1ztAdDqRixOq9D5RYXtvvWyzJqnvH5JvZzQFCMJvn7odCQy3NbsL73qpnx8i/mVvzV+41R6Pe5+VyfS4rIZJERdo/e0bsRr8IjUW0r7ZIJ8rf7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706267700; c=relaxed/simple;
	bh=h1EU6NmqUFj2EvkMVNy0hjRZlnhlBhK46W5pi0y1Pp4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JfDk5w/ty3o6IMGD20S0eZsf3XoowatcE07HCs0fVsODeBWccuhGOCqC7erOVDvyU9lqEz6kw6IcOncjaNDdHJ2i2dCPa49n7ZJsBAv7Xb4Ot6VuQV0wHBhTgdU8QVdPXi6CIR4htdedl4bBHKNkwd4JMekHarn5xJp5MGzKc1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DaxRzeNr; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-55a684acf92so526876a12.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 03:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706267697; x=1706872497; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1ZZmYqo3r/SFCPLD0R0hGRGIRyXYIsP1uGinEyaK58=;
        b=DaxRzeNrWeUY7YNsMi0c95lWDjvUTMbrprpH8UZpOdRNcdeZ6Lq4LbFKUDUaQYewLc
         eTQlSYA7/Q3mFtG1epfjIhro58SqVC/DiUOHm+NFCQoRFkzTyY7wraE9BSuENmuFIDTu
         yMGv5ekAnqaUT6g44hs8VozNHguSCN1ImFrhslM1a5l4sIVeoLvLRtvZ7WI17a9jeBDI
         bbXbvXv3fuCsrvZKPRr0BFX2G9VBhrSRHsFYwrx20XfKeL/op03vlPGF2rLJGTpGhGPW
         tc5fl0Py8AZz1RLWAhg91t6pBVD2TXbs++DMNDscw0ofZ+OdQIznJjkdRFYytJs4gh5R
         8bTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706267697; x=1706872497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i1ZZmYqo3r/SFCPLD0R0hGRGIRyXYIsP1uGinEyaK58=;
        b=YdApRv5FxuEhOLJyjR7q9vtmvwW8gxNfNDos6CUCUNQXyR0KVYR+s3BPGH4jhR29IL
         q07JwXsgITz02QuReIDealP79hjbRcl2KFZpIvBxNXJxR4soH5H8nUyxSL39gp9GRovc
         xefZ7K9pMg45nrY62CW54mmtahRS6bjSgBGaz23F80QHWA+TFu6/3VW4ekihBqxpkvbQ
         6OSkTKH1HeXe2xqnjcJtMjNSpxq0Y+Fd+eNr4yfcWLMtdvqRUlHsMfn7nXgRWx4MLb6O
         JQ/VEn3aEoZf32X/aR/5tnntOLJMi5Uy0pK4nHJp8TPv4BrXqaHUZRHQmUNiXt/RqL1I
         618Q==
X-Gm-Message-State: AOJu0YwdQfW/0H/1lU9qoSb/jDnKjPfdrQdyZKUZXY2V7/xBdGsVHm5k
	xIjDBF/SkpUWIjgY+30zQeMfZ+ZG8ySzfeQeymwJab8FJZtXobMvbdBsTCZULk4=
X-Google-Smtp-Source: AGHT+IEfV55Jc3OHGjYJDygk2acvMz0sszcIACRuw4I6C7+yV3g9xfsU70RpckrTODZ4cxkUWVu3+g==
X-Received: by 2002:a05:6402:c9a:b0:55a:44cd:9c59 with SMTP id cm26-20020a0564020c9a00b0055a44cd9c59mr461447edb.30.1706267697145;
        Fri, 26 Jan 2024 03:14:57 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id v2-20020aa7cd42000000b0055d1f27f47dsm488523edw.28.2024.01.26.03.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 03:14:56 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lubomir Rintel <lkundrak@v3.sk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Samuel Ortiz <sameo@linux.intel.com>,
	Qing Xu <qingx@marvell.com>,
	=?UTF-8?q?Duje=20Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH RESEND v2] arm: marvell: Fix maxium->maxim typo in brownstone dts
Date: Fri, 26 Jan 2024 12:14:54 +0100
Message-Id: <170626764360.50413.9381526885560837347.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240125-brownstone-typo-fix-v2-1-45bc48a0c81c@skole.hr>
References: <20240125-brownstone-typo-fix-v2-1-45bc48a0c81c@skole.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 25 Jan 2024 19:39:32 +0100, Duje Mihanović wrote:
> Fix an obvious spelling error in the PMIC compatible in the MMP2
> Brownstone DTS file.
> 
> Without this, the PMIC would never probe.
> 
> 

Corrected commit msg, took Andrew tag (thanks!).

Applied, thanks!

[1/1] arm: marvell: Fix maxium->maxim typo in brownstone dts
      https://git.kernel.org/krzk/linux-dt/c/b589f7aaf96330236a6d6a4057880550b066b581

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

