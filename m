Return-Path: <devicetree+bounces-113337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F28F9A5454
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 15:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BECA51F21B61
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 13:27:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D194192D68;
	Sun, 20 Oct 2024 13:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="10DvpkmD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D354B674
	for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 13:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729430833; cv=none; b=uqvXxv8y4cMvE/mjjZ2O1BSgjAUzCqFwWgWwQJZEdRLgXk1/YybkkojOImH02IDcVQHmKhJtf3T0jbko0Yhm6KyE/wONz4S+RjmF7xaKzKy2BW2RiuhqdrBq7fo4c2YZ5cyimfPnBSZq80/47x7X4vzhH388lX+FyvddUVLfiFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729430833; c=relaxed/simple;
	bh=eBJzOYlqjsdcPdk0yMInJK2l8n0pk3Q6fRoZHJOBNDg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QFQaBK7XxVmC3Qj7Dvg1H8yzl93orTef0UmZ8BHa970vzz3YyaIwR9CamwrpRE5Nn9AKWdUziuSoa7SB8qXCA2xZD0GtXYFLfVuQcMrSMejJ4wvJ2XTyF+1jZmz4jfxgtMOC45KN4vkpm6GmKkiCoFjo4n9IU7GpGSxYgGvIiiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=10DvpkmD; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-460ad0440ddso21250001cf.3
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 06:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1729430830; x=1730035630; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eBJzOYlqjsdcPdk0yMInJK2l8n0pk3Q6fRoZHJOBNDg=;
        b=10DvpkmDzxKtVVskYOo3t0dMLkMFjFDHL7Xx1FBftUoKf+IOdngajO7i+i2ReiIWyH
         EwpXmoraHRNpSVK6Cyol+ycwVIQ2Cxgwlle99DJW/iwkyCINaGbqmg+oitLZVKf1MpIU
         /PWoPpCF3uSq65UVDxREadSXTVTC4oyIF7fNHCD6C4QXEYR7KR8giNvFNg5ClNkNFK4U
         Qs7xb4s1MNO5lxtbFHLvR/bCH+RZ9FkH5V7y2IIcB8d+UA7/DUjpgM49tuenp222fved
         kp+x3RV9VUkaUfLORX0GHuKV5ujyv/WHBNzUAi/YIViM+CQwYsNHtSi1/kFitDVtI7cG
         MPWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729430830; x=1730035630;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eBJzOYlqjsdcPdk0yMInJK2l8n0pk3Q6fRoZHJOBNDg=;
        b=EYKOx1gYER3wLS0O5LJCiIcl7QGH6AakQL8kohd7br5j8zVGg9qgFAKSXUmBAZFw/Q
         x9zg8fMTXim9TKbyacy0X6ygSDVE2pqAiGgr88zg9TZVwzDbiqn/XRvQB+zVsbq9kNKe
         x/D7APqtMgfttWdq1ag6zNl7PJ0qysOo6BVM7ktuDoZTEjuOl5LOCkEhlGjLb26wDjm/
         huQFeFsDqTUV2pA9Fw1+l0xzNDJ+nyAnjYB+krIp1w/hugx2ndKVp1X9ZbQP5L+5qSxv
         5ITZnnDbGigJ4MgjrsHSvaWMYCUlofrxqsJ3AI/Pc8ZJT+kEeUw+iCLjOeRrRSnwJoU1
         JN7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVx89ddlVd/tqMR/q0eujLqfVTf9FqTnm5nV+H0ycv/8COFaVo3TuFcU4Tg9wL/xultH21d3+ngavzN@vger.kernel.org
X-Gm-Message-State: AOJu0YyXMj6iK/i046mr9OuYRP7pRi3JURQfCelRRkrMb7b0q6buXyLt
	P6bRyDEGtN1puR6PGU/QOHd1vpSC+qicowqamypn3JvlLEaC0yvcDeQsvyAhGAuh86tPkcmaRtG
	ccdFIoTgzkR/zbySm9BMAvEUk3Hrfxw0+wIjj9w==
X-Google-Smtp-Source: AGHT+IGnWYenAH+ICS/UFFfkdYgfxAxxgdD8o/QX9kkC8wcWWq8eVoZ/61fjMkC/c+9rFwRbkiM8CbwF/i+45YR+acg=
X-Received: by 2002:a05:622a:4d2:b0:460:92fa:f72e with SMTP id
 d75a77b69052e-460aed75b47mr141603281cf.33.1729430830268; Sun, 20 Oct 2024
 06:27:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241019162605.308475-1-guodong@riscstar.com> <20241019162605.308475-2-guodong@riscstar.com>
 <2024102029-populate-footage-755a@gregkh>
In-Reply-To: <2024102029-populate-footage-755a@gregkh>
From: Guodong Xu <guodong@riscstar.com>
Date: Sun, 20 Oct 2024 21:26:57 +0800
Message-ID: <CAH1PCMa4BK2eaVYSmckSDtGr6uhMEF12jHzHwqz-hnKFbQrFRw@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: vendor: add deepcomputing
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, rafal@milecki.pl, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Heiko Stuebner <heiko.stuebner@cherry.de>, Michael Zhu <michael.zhu@starfivetech.com>, 
	Drew Fustini <drew@beagleboard.org>, Alexandru Stan <ams@frame.work>, Daniel Schaefer <dhs@frame.work>, 
	Sandie Cao <sandie.cao@deepcomputing.io>, Yuning Liang <yuning.liang@deepcomputing.io>, 
	Huiming Qiu <huiming.qiu@deepcomputing.io>, Alex Elder <elder@riscstar.com>, linux@frame.work, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 20, 2024 at 2:21=E2=80=AFPM Greg Kroah-Hartman wrote:
>
> On Sun, Oct 20, 2024 at 12:26:03AM +0800, Guodong Xu wrote:
> > From: Sandie Cao <sandie.cao@deepcomputing.io>
> >
> > From: Sandie Cao <sandie.cao@deepcomputing.io>
>
> Nit, for some reason this shows up twice, same for patch 2/3 :(
>

Thanks Greg.
I will fix that.

