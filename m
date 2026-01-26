Return-Path: <devicetree+bounces-259546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMBiCtyFd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:18:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB168A063
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:18:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E975B30432C8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F42933DEE2;
	Mon, 26 Jan 2026 15:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fE0KikZp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C258733C50D
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769440538; cv=none; b=WZI6dsgPkJPN3xMc0WPIpQ7TCd8qOowYBHdiaBb088AfqhcUH4UJk3dcy41PxN60vz8ToH4L8LmEVFw35/wKQTwiTUNwnk+nEf+Oiq5wwcZHtre/w2e4eKCdCrY+lRJjpe+Ve5YAGPoMFPGZ4tjNDoKVR1PPk0OEbB/svcw4Nuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769440538; c=relaxed/simple;
	bh=FC7X5zPYMI/o32zsBSUmBvAhD6KTKw50hOGSh5dNAj0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jqvuPRb4JpGtLX7TT5hnZDHxV0k8bFuTmQyTIiMjzDIu61y7RkmviyLFlgdoWZnWV7ow52tvWgnRlLqbehTET1iX/gpviYlziOLi+kP1H0AOcKITETN7uC+DGOhsHPHEqbSvA5FeXwHwHD0KsLl0Modom5OE3f6tfAj+TXm05q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fE0KikZp; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6580dbdb41eso6401811a12.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1769440533; x=1770045333; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4t5aplmA3nTqsGBEOpCKNqLj2NzSX0vQ+67pQX8dHuA=;
        b=fE0KikZpBdrFIGm0jCwNgLxXZnvq2yGIQMbGrBjd4XVG0tTigK/8/HrODlOgs0iSSa
         oxviLwRWjVmdSmsBZtWpsSoP2ysCPEubCtx2erBKSwWmVlhLqApKjjG/AxqDwFyy2iet
         Buq5tc+6kqAKE/Ug0GWdGcIYXii5PPaFzD4dI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769440533; x=1770045333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4t5aplmA3nTqsGBEOpCKNqLj2NzSX0vQ+67pQX8dHuA=;
        b=HrEmWzAfxUzCxNqZXCWxEHL2+vl/wvV9wxgjIgPdPTyurI+UelNlhU3Q2Yk3XCRPhT
         V9u30AtvxB9nuZOLgezBjNRD/WRfThlQTrtNvTUukDLvAT2laaP8BSJs6kPp6NmG0GIg
         zbHZC8NC+k1/ArzP3x/PxG8hiD4AYCz/pa/+m0mj0+O+u0LuDZZQZFXB7UwP1ot6TNeh
         fkZTa0eb5sH6o7hGlAQKl0KAD9eum4hAmPNtOTVeslpv7lqoRpyuYMfmzbqpnZ+bNihe
         e/4N/xhE893YVZqx85CYzH0MoSaQm229xdXPe65k0gfX9u4sz25GL4B+0a+H1IEvynEL
         eG3w==
X-Forwarded-Encrypted: i=1; AJvYcCXj95Uvj0CFdpyBLyVUskGqnx2tkv/hfTCi72Pf8sRWrlnvbuOqx1nKtGzsZ8qY8GdhMjqrLIUpaFow@vger.kernel.org
X-Gm-Message-State: AOJu0YzvHC2kdHFUoWj7evz+yRSfgrnj+Xf1+BJC8zvnfU6oJQ29Bjmj
	pELjM4zVwAk3HgabRYRNofhDcd1RbO1B/XMN3zWU8eRlOvmS0DvTsu9boUlQxY36mAOWPxdDG77
	4Log=
X-Gm-Gg: AZuq6aJuxqQy8DtAhYGZ8umw9C71o39PNQ519XVB8wpxYB7JxvV4ebYzbXjma3fjWyk
	VxtGdJd+GvWl5j8JHYgWiSk0Ukson9tbzIcgh/6S49ySoExfVd8lUHR8V2/FvDbQThP3ZWbrcqD
	wNfgugMsEP4vF93osorvscg6v9AMvBPFluDV0NcwhAnEOdmBqE+DiJOApDXXDr7HxV/9JuYUyIY
	wZo8HOCvItX5dvv32yLhbhTuqMtHxcPfLePfxPXOyAMN7/RRccX30HjQItmYD+z1YyfqNdt38d+
	vLmgDFRcMO3gfWVtS+oFbDpCnkcCH/axDOHsny/ClbErvM7b1dGByfNcc963x8i7/5LosApSkji
	LUZDChOqK1FwkgXTNgTdUaqplNt/WFT/qHQKfaUEyKKP3xt5D1QMtfg4/sb43TVc6Ru41rerpWJ
	lO19/Z7rugGBNGz10ByTb/EDLr+hKleDwngGYNcuo5UApzvCzq+g==
X-Received: by 2002:a05:6402:34cf:b0:64b:7eba:39ed with SMTP id 4fb4d7f45d1cf-658706b44ffmr2940737a12.13.1769440532902;
        Mon, 26 Jan 2026 07:15:32 -0800 (PST)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b965d98sm5327380a12.32.2026.01.26.07.15.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 07:15:31 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47edffe5540so53100305e9.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:15:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVxEeRBem6jzW3gzqkGI4DgqOnfp2sjOvF6eliiUhn5itZHcSArXdMyeTpT+NGoBzXiz2pZ+9NJ9Bof@vger.kernel.org
X-Received: by 2002:a05:600c:3e1a:b0:479:1b0f:dfff with SMTP id
 5b1f17b1804b1-4805ce4e55dmr85307405e9.10.1769440530557; Mon, 26 Jan 2026
 07:15:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
 <20260126-venus-iris-flip-switch-v2-1-b0ea05e1739a@oss.qualcomm.com>
In-Reply-To: <20260126-venus-iris-flip-switch-v2-1-b0ea05e1739a@oss.qualcomm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 26 Jan 2026 07:15:19 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XmnJb5_hJ_NvAMMQExZb6r2P8Z4hTSfUiqit+-LYpYKQ@mail.gmail.com>
X-Gm-Features: AZwV_QgSxLFN0B5kCSZpCHaocJhmPgrGrSBW7Fb0Ju5fp6s9Xmzf9QgNaOY6xDU
Message-ID: <CAD=FV=XmnJb5_hJ_NvAMMQExZb6r2P8Z4hTSfUiqit+-LYpYKQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: sc7280-chrome-common: disable Venus
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
	Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	"Bryan O'Donoghue" <bod@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanimir Varbanov <stanimir.varbanov@linaro.org>, linux-media@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Stephan Gerhold <stephan.gerhold@linaro.org>, 
	Brian Norris <briannorris@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259546-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 7EB168A063
X-Rspamd-Action: no action

Hi,

On Sun, Jan 25, 2026 at 6:09=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> Iris driver doesn't support non-PAS/TZ setup for setting up the Iris
> core. It's expected that the ABI that is going to be used in a long-term
> would be different from the defined venus-firmware subnode.
>
> Granted that the SC7280 Chromebooks were cancelled before reaching wide
> audience and granted the feature ABI changes, drop venus configuration
> for SC7280 ChromeOS devices.
>
> Suggested-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 11 -----------
>  1 file changed, 11 deletions(-)

As far as I'm aware, anyone still using a sc7280 Chromebook dev
platform doesn't care about the video encoder / decoder working.

Acked-by: Douglas Anderson <dianders@chromium.org>

