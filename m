Return-Path: <devicetree+bounces-81735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 593A391D242
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 17:08:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9424D1C20B2E
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 15:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA9DC152E1D;
	Sun, 30 Jun 2024 15:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="zAlzrNw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD5214532C
	for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 15:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719760083; cv=none; b=ZeP4oDsmC4kyn2h79edcrgzg+MDkArw9Oqx7H2KuktWe0PdZFxt2vEUs69mbNM931u7PaAAg2aMeZmy+GKw+miNKflqWiGGEl6eR+IOpzdmaYhvhyIiYQ6+JaBNxygXFn3tbYzEPTazvwJJZuOQWuBTWbTvhCNa69Hrx+vHdgb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719760083; c=relaxed/simple;
	bh=BnG4+1E9hPYVvsAqxmqjcvQPfqxK88WLhyCCGGLrJ9k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uCEUMW3k1HfvctFJqeoXwFByosKywXsTALf7enh4NC4gbCMnNjgpp0y8eAVU9ep324H/BGH1fxY7I2WhRp2oxs10dV0uYArHABk3OW5BdP++1aG49rl0ii3Oj6kihs3zTQfLHROPer5arSTtXEZPJrLPsKzG+Sg595gmUxXNJnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=zAlzrNw/; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-425680b1d3aso14949535e9.2
        for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 08:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1719760080; x=1720364880; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BnG4+1E9hPYVvsAqxmqjcvQPfqxK88WLhyCCGGLrJ9k=;
        b=zAlzrNw/l9YlFs7qZprS+pX/6l3CKx88ihZZXF756eHLF48l2jbReWFVuyEjfHqAqy
         nCwbBNfzrxJu3VP98JmKv6UciI6Icho0QVkPdCwyVnriqAeY3smW8ZUNck16e0/Y/7qm
         3sAgHeLCIGFsLKr3QF7Irffxn9/EKKDa5kLon2xphUMW1aAyv41axocBtWC2tKRkxER5
         JgVE/OVTjfETmSCER2xRY0xl3t09B9BC9uWWHFLpMtRTW/YQDSexMnRs/q/0B99VbmhB
         ZijvJL5MLDYwU8DZjwi9Un1QTeoYEn19Ut/ibcPBX/gTJbms+VSmYDNmpVUSrHzMY5wF
         QzLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719760080; x=1720364880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BnG4+1E9hPYVvsAqxmqjcvQPfqxK88WLhyCCGGLrJ9k=;
        b=UKmjyoktbj6bMvfntRAIDi+wpnUskhS64bFMzTTQKPTT0lHWIEZ/68vvTxP/KurZiC
         TH+2UGeYWEGbe2EAAxf5AUCk4zpqHD44rvVmLanyy8LJ4UkVjqtKc4Sqe2Rkcx2FIVNw
         ttqx1zyB56EEEwpk8Fv9aKDRRsUWs/pRV7knoJkMyvDdeU9Yt/gJprGos0ZeWYUnbI73
         GdIr8p41LI7C5ebNywtT6p+bmRwRuGFZLnopH/2sTYqRpqCSfuQbYvFHH7Erwj37LU0e
         7MylbKhUaApXko8dQVmowIspdU3wrIkJVRCsOcFvRL1WUPhNvRKhRzRMXNnOtIRFQ7Er
         D/ew==
X-Forwarded-Encrypted: i=1; AJvYcCXWBV0NJBSfLUROE/1HWxK1ytMdsbBWQM6fzHDmD5qlADcSN9OY91oCnNDmydXyv+6EOdwNQvir8ssI0aCPOG2HQth2TlA15hGaVw==
X-Gm-Message-State: AOJu0YxUTi4b0DL6f6k9RGDKptZD9dvOA7FoQ8Wh+BBZTWQcW5FVrlWm
	xyGFYbM47IYp41zSVsEyTsxR6vuMVOR5yVPPol1QzR+tzrnCQp48WzxGYkS0OVs=
X-Google-Smtp-Source: AGHT+IGdOwRhOocmHbNjBzNVDujGZiKtTlIhS1EUT3ZACm53AuDJ5KRaWqDiD51zqCSuCqFrDXDt/A==
X-Received: by 2002:a05:600c:46c9:b0:425:7aa0:9621 with SMTP id 5b1f17b1804b1-4257aa09ae0mr16326335e9.40.1719760079674;
        Sun, 30 Jun 2024 08:07:59 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ec24:52e0:2597:4fed:351e:e974? ([2a01:e34:ec24:52e0:2597:4fed:351e:e974])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af59732sm114769045e9.11.2024.06.30.08.07.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jun 2024 08:07:59 -0700 (PDT)
Message-ID: <bb5eabd6-b8f6-42fe-847d-04ea6dcdf418@freebox.fr>
Date: Sun, 30 Jun 2024 17:07:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] media: venus: add msm8998 support
To: Bjorn Andersson <andersson@kernel.org>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>
References: <8b2705b7-f33c-4ebe-a6a8-c5ef776fe9ad@freebox.fr>
 <eb15a48b-6185-42dd-92ca-8df33b0ea4b5@freebox.fr>
 <yhjdqnkmqht5bz355i4h3sljkyosql2wjz3bgraewjy6mowzoo@upfjvtcduz6z>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <yhjdqnkmqht5bz355i4h3sljkyosql2wjz3bgraewjy6mowzoo@upfjvtcduz6z>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/06/2024 05:05, Bjorn Andersson wrote:

> Mauro, please merge the first two patches through your tree, and I can
> merge the dts patch (patch 3/3) through the qcom-tree.

Hello Bjorn,

Hans has accepted patches 1 & 2:
https://patchwork.linuxtv.org/project/linux-media/patch/2db42e45-c034-43be-be96-0e88511d1878@freebox.fr/
https://patchwork.linuxtv.org/project/linux-media/patch/eb15a48b-6185-42dd-92ca-8df33b0ea4b5@freebox.fr/
(Thanks Stanimir & Hans)

It's probably safe to merge patch 3 now?

Regards


