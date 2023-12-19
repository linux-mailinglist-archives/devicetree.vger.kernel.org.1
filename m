Return-Path: <devicetree+bounces-26909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A16B818874
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 14:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C355F1F2368B
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 13:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19DB118E21;
	Tue, 19 Dec 2023 13:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=waldekranz-com.20230601.gappssmtp.com header.i=@waldekranz-com.20230601.gappssmtp.com header.b="qNyKfJW1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501511944B
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 13:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=waldekranz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=waldekranz.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50e305530baso3373328e87.3
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 05:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1702991718; x=1703596518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dEWLeZGJpzVrUQ/zzqxL0HpJGYgEtXj4mq42URuv+FQ=;
        b=qNyKfJW1oMbd/MtbKFLTQM4pHpNo9EKFCXPSetRevcUFJhSzwgQo8ovuTLzqwir6ve
         dkm7w409pbGyMmgzL31LmvUU1a78Li0JvsNKHvI//uRygZRCJfZXfDftyWSKJ36wbUSs
         TaW714tuQIrJ7SHqYK0HYX9y2pNpM3UwaJRmI5GsSTIdRxiN8lVGQ2SplikPc0RBe34r
         TOKvFlGZ6mL0nWSl95UzIoWypELuN0WW62bBRLLivuEsNABUaCyNWoSqsVppyVHeAMC1
         K9Z2MrH1yNxA8VsKEiLOWForyUGiveXP+GyCePa8pDbd5g/Rhe3tSx4R0YvjPdS2qf7X
         rJ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702991718; x=1703596518;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dEWLeZGJpzVrUQ/zzqxL0HpJGYgEtXj4mq42URuv+FQ=;
        b=q805vFOWnEMwx1CkdzCNKLzbL5kg+2mHTAtg3Hve8FrZMOMe2qE9qJfiKSGsZzDoOR
         bnIo396fiaGgcACJoztOWs2XYQ9eFHWE8JBFa/Ll22LkPxPArltqWfpjewYuouW4sSn9
         1kahdU0GB2mVZEvcWjKiTclxXqurjVzLaUJh4/dAVskgJCnMF7RYhBCj2jopL/tP59ZV
         2sZM9FnVijQW87+EJMpq4dsTQ4B3DGo6jJDx+koiVeXA29EvFKArNr4bC0Y7ysOUOeEo
         IzsTCKtoteRlCK5suWDso7RjxlMb1CeaUzrJAEeqLEYCLiw5Liq5xAtWHz0Qaz/FXBGb
         OINw==
X-Gm-Message-State: AOJu0Yx401s4lFeJegGrg8YREJGXqcEP7+NRIumdk4bKcpJeLD6DV7b0
	WBz/jGYvSenTf341STF6i9P+gLg5ahGo1jVGfbE=
X-Google-Smtp-Source: AGHT+IGb/4rcS2pr9e1wAGmjKhVxnh85rPYYOtmBvp7KC5JUCtAktM8uS8WzVCpunmysUofJ1DdDXA==
X-Received: by 2002:a05:6512:2098:b0:50e:30f1:8668 with SMTP id t24-20020a056512209800b0050e30f18668mr1969385lfr.56.1702991717627;
        Tue, 19 Dec 2023 05:15:17 -0800 (PST)
Received: from wkz-x13 (a124.broadband3.quicknet.se. [46.17.184.124])
        by smtp.gmail.com with ESMTPSA id i13-20020a056512318d00b0050e16c8aba4sm1502636lfe.306.2023.12.19.05.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 05:15:17 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>
Cc: davem@davemloft.net, kuba@kernel.org, linux@armlinux.org.uk,
 andrew@lunn.ch, hkallweit1@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 1/4] net: phy: marvell10g: Support firmware
 loading on 88X3310
In-Reply-To: <20231219114909.6b5c664c@dellmb>
References: <20231214201442.660447-1-tobias@waldekranz.com>
 <20231214201442.660447-2-tobias@waldekranz.com>
 <20231219102200.2d07ff2f@dellmb> <87sf3y7b1u.fsf@waldekranz.com>
 <20231219114909.6b5c664c@dellmb>
Date: Tue, 19 Dec 2023 14:15:15 +0100
Message-ID: <87plz272qk.fsf@waldekranz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On tis, dec 19, 2023 at 11:49, Marek Beh=C3=BAn <kabel@kernel.org> wrote:
> On Tue, 19 Dec 2023 11:15:41 +0100
> Tobias Waldekranz <tobias@waldekranz.com> wrote:
>
>> On tis, dec 19, 2023 at 10:22, Marek Beh=C3=BAn <kabel@kernel.org> wrote:
>> > On Thu, 14 Dec 2023 21:14:39 +0100
>> > Tobias Waldekranz <tobias@waldekranz.com> wrote:
>> >=20=20
>> >> +MODULE_FIRMWARE("mrvl/x3310fw.hdr");=20=20
>> >
>> > And do you have permission to publish this firmware into linux-firmwar=
e?=20=20
>>=20
>> No, I do not.
>>=20
>> > Because when we tried this with Marvell, their lawyer guy said we can't
>> > do that...=20=20
>>=20
>> I don't even have good enough access to ask the question, much less get
>> rejected by Marvell :) I just used that path so that it would line up
>> with linux-firmware if Marvell was to publish it in the future.
>
> Yeah, it was pretty stupid in my opinion. The lawyer guy's reasoning
> was that to download the firmware from Marvell's Customer Portal you
> have to agree with Terms & Conditions, so it can't be distributed to
> people who did not agree to Terms & Conditions. We told him that anyone
> can get access to the firmware without agreeing anyway, since they can
> just read the SPI NOR module connected to the PHY if we burn the
> firmware in manufacture...

Yeah, they are needlessly secretive in lots of ways - much to their own
detriment, IMO. They also protect their functional specs as if you could
just run them through `pdf2rtl`, email the output to TSMC, and have your
own 7nm ASIC in the mail the following week.

