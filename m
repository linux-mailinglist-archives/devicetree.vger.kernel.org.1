Return-Path: <devicetree+bounces-235304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A6BC368B5
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 17:03:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76393500DEB
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 15:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5755D261586;
	Wed,  5 Nov 2025 15:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zxw1LtPs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F15B25F984
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 15:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762358140; cv=none; b=rTBHGv4KAF69Staa/CK4qdKxQyYsj6SWV0Bars6UdN1ump3Q6cEFtsqJC6e/1nAWq0KrsO2zA2fOCaQOZGD0MEJuoREhNJLAghe4oVMvlbIEPHg+EWBAJaAYimUshL1iEl0yI18fiFF3WGyZHf5oxLLSG5PC8oFQ0N8iDn1nMXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762358140; c=relaxed/simple;
	bh=Io1VyLd1gRAuF4noSMJeCvamZeFl5b2WHdevUDZuHy0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=urjEJ5PWtjyqfKkBT708qP5HgbeAUXWQj6cZavnQorO4WUfy0xJk3t+uNDHJNcdfa/qxIjTvGfQdrj+4mvqYJmrJh0XbCunpZcmzySrqTNM8TOT1H0BJqeBF8ZLWbub2u+PA6ER0svOs10MbdlJQP4JlhnJBp7f9saqSO7UdG9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zxw1LtPs; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59390875930so8361153e87.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 07:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762358137; x=1762962937; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Io1VyLd1gRAuF4noSMJeCvamZeFl5b2WHdevUDZuHy0=;
        b=Zxw1LtPsMpzOhdk9lrETJIHdaZWGVdK6jFv4ltJuoNHJuYa88DqL0iDz2g06ouRaz6
         KYIV4YNVRrHhT1wNqSU2ie8of67ZmMvnS6Qi10B/Qh3xIBTACGBfUCDuDLAehGviHtyI
         ziBGFBLs3WRsvrN8Q4W/dgJTY3wRDDV4dWudqOuJFd0P3cqk5gf3JG/biO0ejav6Dn03
         S5Kte/Du0CI9I46smJUZcD7Bg76yUa3V6SIG3iTvCE7QkY3lQM6kiQ21XClf/cXadFhJ
         2dXZ/T7Z3WAIp7WKkkfyCfW8XX7TnU+bD6sQib1S1J9qg9JskJxBPPon4JXxGf+z+Le7
         RnzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762358137; x=1762962937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Io1VyLd1gRAuF4noSMJeCvamZeFl5b2WHdevUDZuHy0=;
        b=GxZx1yDSMurO/tx7+I1TsmMKdlob82jKMNePf6t/2PNEA1uk+aktisCtAZNP+3KvJl
         dzxgYyaAN1j6WNmUjWfB8UPUeuoIvq3+AzYflxemIJ2BbpLz5htWVOipXMLkYy06nVfD
         Yqb15J8l/fxvw4iiCmaQniy7kZBmLihJDereZQ18XHfcr7dO7XhpAquGA0GyTXmakxIP
         0ymO71/pk8jcAiGFuoLfroYJ8LZ5S18FJiRJydvy4CQ5rWkjVOVawD4DzYtL0pEJEzV2
         KPjbrO6zHQS1ytGTkZdH5GQIFVQVzgIrR9U2XUvfpMQXTc5SEpbpXRgcEXi0FyVsPmmv
         HASQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnr/j4/CL0MxeVETjb0yaXE4jHcXwStWe83mzTb1yIaOCHOLU/2LkEv1OQ6w5wkNoYfumPBmjLjYo+@vger.kernel.org
X-Gm-Message-State: AOJu0YzUamyNCsi1yxHtTlOMd3CHxGfTRFYtt1oLoHMwXhmQ7YGH0eT6
	FmFF4EU40hZ8Uwz9GYPu4pa8conxLagUKdGYieRiXQU7F7YrVaNvmuWmEwowL/ICdkJQCZ5TqMu
	pUskH2cPJhdFXglbNbpRMtSg9eBKdSGw=
X-Gm-Gg: ASbGncv9wUffZ2+p8J5pQE1HQ5EOC+RwqZhyq2O1YM75vxEp9KBL7sEOkySg6jkioGF
	Ws6OEYF9bev7UBhoUXxo8cUKWsrTSJYA11s1ugLYPwVlFrl4Ob1n95ZrRSDYNZB1IG/Xsn8cxeS
	ZJp4HNHpf7ApFmvQNjLj/bLNtCWuhYNRCeCJA3i6219t6O6WugCwK/oBXU00L6l5sqIClj1XGb/
	sCYfKw2wodGAv/bgmNDVN4FuQNcUxLAF5maMK0lKZt2lBKi1uMKklqrVxAeLkBGdNGw/QbcgYXd
	hqrek82umBuuP+Eq
X-Google-Smtp-Source: AGHT+IEKZD2r+A6glfOrMrg4LC6QbMe/1oJABd/0/CzvD1LhjWBFWqHF/ZzZ6hEZaZ4L0CrW3eHh11z1a5+Hf0RYLbg=
X-Received: by 2002:a05:6512:1390:b0:592:fc68:5b9d with SMTP id
 2adb3069b0e04-5943d55dbe3mr1269961e87.10.1762358136484; Wed, 05 Nov 2025
 07:55:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105152555.1992513-1-michal.vokac@ysoft.com> <20251105152555.1992513-2-michal.vokac@ysoft.com>
In-Reply-To: <20251105152555.1992513-2-michal.vokac@ysoft.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 5 Nov 2025 12:55:25 -0300
X-Gm-Features: AWmQ_bkzywn6dkKu5hKn_kdsHkqaeTB3gPh3L9WBztucxEsOta2CD1J3nctobCE
Message-ID: <CAOMZO5AKmKWciyF7-f_mVfJWdLB1rjh_Xi=BhkBAcmV=cJ-nyg@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: imx6dl-yapp4: Model the RGB LED as a single
 multi-led part
To: =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 12:26=E2=80=AFPM Michal Vok=C3=A1=C4=8D <michal.voka=
c@ysoft.com> wrote:
>
> Describe the RGB LED indicator according to the reality - it is a single
> part containing all the three R,G and B LEDs in one package.
> With this description the chan-name property becomes useless, remove it.
>
> issue: HWOS-816

This issue notation appears to be an internal matter. Please remove it.

