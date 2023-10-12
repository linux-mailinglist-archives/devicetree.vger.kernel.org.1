Return-Path: <devicetree+bounces-8072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E997C69A8
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:28:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 204331C20D62
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606FB21345;
	Thu, 12 Oct 2023 09:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="vk1l//Tk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0514921340
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:28:55 +0000 (UTC)
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E94E7D8
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 02:28:52 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id ada2fe7eead31-4524dc540c7so327753137.0
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 02:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1697102932; x=1697707732; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p1CmCoLPcwE9XAoTNjVot3oBuDAU5DOI+jyuV49vMEM=;
        b=vk1l//TkWau9mx0UAOH/+KqUhZA88sseKgtGAbd8WpVNyxKe1qJTjdDoTERs9/JRPl
         t/KyYDeYtLVLqeArRGMGet5yzcHmRUxQo0RvrVLKN3I6km3b3wzGKNTP4qfhdt8nmkMI
         u3+k4bOPMycXQsLCVL40M5fK7TkLriHFS3XOam5dXMsUbrzE36FWQEtSlC2LwyJfU/iw
         96HdQviJE+EXmyzsdPSsNW1b0GDN+EnbyCS8dlvTPvuVqCbMQeeVaY3FEB7ojfuT2C80
         WcRdHq5mOjLtdCvj5C5qMa/Oi5u1eu6I5M5VnjXPLsISrDlXCMefQJP/ogs15uEtuoAp
         YbxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697102932; x=1697707732;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p1CmCoLPcwE9XAoTNjVot3oBuDAU5DOI+jyuV49vMEM=;
        b=Y+dcBvfA/1qcJVMpqg0ecqzuDl8LkBzka6OkJR+UgFIxpuhYXBipoy4k5GRa0d4bul
         8cDMT4960arcgAvmcI+O0WdjFLm++kWkyiBHWkZ0c1ND/Ff2Bk5eC2vspBg3qt8WhB6N
         sJcEKVMKwDsJNzQGeDj8yp1/X0BNjrk0/y45LQqT1jJp+PbOn4mfEipomj8yuCMEaGeF
         r5lrH8AVtDmB7PG26b2GII0EkHEgF598Ybn7C2KmIv+ByjFMM0ZQn+0kcJzFTgvKLAsh
         7Mrp03HFOmjRmKAfn/vBnvz/C+sxPiNgvVwjTRixnsAbX82efHKj+tqQs7NmaXrc5Tj7
         iBsw==
X-Gm-Message-State: AOJu0Yw8/pxgvOGlYmyHfsqwLhzFSsKcjMbNKl3iVO4XzrEh8xI/fcKK
	hdeMse3QHTr1ZkHqxh3C6Ud46iJtAXDNCg3Fm5Rstg==
X-Google-Smtp-Source: AGHT+IGIjMdJAJDNhNrxc++TeBiaDgGlbUXT4r12WVy52GtaJUwFG61cCoCFs6mY8RrDQFKLTKOH/R+TqV0kwK3vPE8=
X-Received: by 2002:a05:6102:3026:b0:44e:94b3:9253 with SMTP id
 v6-20020a056102302600b0044e94b39253mr21511339vsa.12.1697102931162; Thu, 12
 Oct 2023 02:28:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010190926.57674-1-marex@denx.de> <20231010190926.57674-2-marex@denx.de>
In-Reply-To: <20231010190926.57674-2-marex@denx.de>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 12 Oct 2023 11:28:40 +0200
Message-ID: <CAMRc=MdnqK7_LkcZf85x11G2x0jGL19sGOWydP-M0ZeC-WtYDw@mail.gmail.com>
Subject: Re: [PATCH 2/2] eeprom: at24: add ST M24C32-D Additional Write
 lockable page support
To: Marek Vasut <marex@denx.de>
Cc: linux-i2c@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 10, 2023 at 9:09=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:
>
> The ST M24C32-D behaves as a regular M24C32, except for the -D variant
> which uses up another I2C address for Additional Write lockable page.
> This page is 32 Bytes long and can contain additional data. Add entry
> for it, so users can describe that page in DT. Note that users still
> have to describe the main M24C32 area separately as that is on separate
> I2C address from this page.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---

Applied, thanks!

Bart

