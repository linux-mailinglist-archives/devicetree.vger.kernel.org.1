Return-Path: <devicetree+bounces-253725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99120D10DD0
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:28:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E5D1300FF97
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B790A32E757;
	Mon, 12 Jan 2026 07:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XxJES5AG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B117314B72
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768202854; cv=none; b=TV2dNnGlDxAErYxDVmAFxISJDU4jbEAhE+Eneu2NHP1wJElnM07+NaQHg7rqrazTg7JkTHhEryM+sVqA1NLwd1gjtSChEkaKpFm0eFZQIavyosADO3B84pzDzKu4iTzqYPZ3HLWp5gBGOC3hnoPlykH+P8gYz/0/s12C+5hfTac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768202854; c=relaxed/simple;
	bh=hjNXZzrzNnHd8WwXKi+KrrJ2wsOnxzoEVWlzPqz8Jso=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QuNePb4vMCJcaVvaEgaX/uc7eTNLE38cZE+svJ+W74y2OTHypG7VVgDpgbVLQCJP5K50h9/jikUJF/w2DdWXipZ/AVVG/FR20TsjYKF3TnpM5UvePQSD3WvVl+IljAHIOXI0+Fe8f+SSXQRR3ju7mWk9dJVVpymzXwp/23rs//c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XxJES5AG; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59b6f04cae6so4702843e87.2
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:27:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768202851; x=1768807651; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hjNXZzrzNnHd8WwXKi+KrrJ2wsOnxzoEVWlzPqz8Jso=;
        b=XxJES5AGUs2qXY+oQfFDY20PEstc4fwXyCl4yAzLbVTqTMAmndhxYu2ntvgC3Xm1QV
         EdZEHievQhUo3CsqRe1upqdioRS7nZCyez3X/4muV+NyqnLDrPDq7OCzxQ0KqCm3VVxd
         BIPoS8mCc66dvzqmO8Xj1zpMj+FJmt9cAdC0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768202851; x=1768807651;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hjNXZzrzNnHd8WwXKi+KrrJ2wsOnxzoEVWlzPqz8Jso=;
        b=Fole6sil/4EspEYbDcW4gevRAflcOBQkAc+9lqJpUfLwpYiaml2J3ihqCLXAKo9f6l
         okby4Hbhd0qbFOR4cmElMh6/3v1zcC+m9qgYKe8aGQrHQf3i94xV5S0N5sM+2dQGtDNc
         vzqKM2IitbSc6gQcCji6Q4ugi8pyQ9cBHUc0DiPKQoQFYAGZQizgMIOrU8D4TtpUwuVq
         A9pX7bVvOr6PKFDiD+tjytKOBDobK1KqPRFRayTauiwszVbXsX2mYZDhmfMOxUqdvmF6
         XL2ft06Cgng76dzKbNUH9malEXzNzDoxy8QXxWVjpeoiBeTOZPzF0F4WRC8mAQL55zS0
         qTEg==
X-Forwarded-Encrypted: i=1; AJvYcCVmTSJLX8HlEJsblNtHDyIeh6twiU8OipXWziKoj188lJVJyGPa0FNLRVLlk+lBOSHPDzOj5UpmCHnU@vger.kernel.org
X-Gm-Message-State: AOJu0YyWWLkRIKbc/H4aCy+ZtmZk4973vL4gTNvX+sRLEXwo1yLpa8Xt
	Ot68LaPU4+GO3UcPIUv1NES3rAqOkcmCoqR48wqSx9c+fsAY9IH3DzX8c6qvmPiiMFttgdN1xWk
	Q+FAlS6M6Cpk7gWS/j3A5SRubWn7f/vJmYqzVwyzw
X-Gm-Gg: AY/fxX5rS2PXTKl/PLEhj1/oFO58+7bkyb0vZIvszZAa0VaWYyfG3aVJr9ToXaqCFQj
	TaY7o92ISIdqXGTbO5czqE8LfFJUaqRBsNBubOT81KNPlFj+Hc6f5yeHCofsSskCSo167TF8c19
	Ppb9y8QIVVJIGoyB7EMn3lCg4uAYzjuFiXb0XuVk5aU/sPlq8NnMGdgxYwlg62kYU4kFSjv0/LA
	jI7kIBvI8MzZo9SwGeftEwtRP5I0fC/Lwo7FJrlvd2vcIYWQ6fXyHsoXahtqQftSt1tHn5N1TIz
	UyuUpFEMgXOompjwk8HAwSDq
X-Google-Smtp-Source: AGHT+IFDiJ4ikKcCwIxZX4SezU35LBnUxDwbkGK9Em2aOhPxq3XtpkeM0bppBuO5WEJf5CT7uQpxTxcD+yOpL8T7LO8=
X-Received: by 2002:a05:6512:3a83:b0:598:ee60:8af1 with SMTP id
 2adb3069b0e04-59b6ef04a41mr5556612e87.15.1768202851300; Sun, 11 Jan 2026
 23:27:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com> <20260109114747.37189-8-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260109114747.37189-8-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:27:19 +0800
X-Gm-Features: AZwV_Qior6rX0_9acmsyDt7cjn3RepUbmW4kOBhOOEjHOmhFq4_xiNmMvJriwDA
Message-ID: <CAGXv+5GxHgdLc=VibTi4+q8uyk+hqBQAqxfyz3NnBtCFbj9urQ@mail.gmail.com>
Subject: Re: [PATCH 07/11] arm64: dts: mediatek: mt8173-elm: Fix bluetooth
 node name and reorder
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, sjoerd@collabora.com, 
	hsinyi@chromium.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 7:48=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Change the node name for Marvell SD8897 SDIO Bluetooth from
> `btmrvl@2` to `bluetooth@2` to fix a dtbs_check warning.
>
> While at it, also change the WiFi one from `mwifiex@1" to a
> generic "wifi@1" and reorder the nodes so that wifi@1 comes
> before bluetooth@2.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

