Return-Path: <devicetree+bounces-112274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 559839A1A12
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 07:13:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 875FB1C20D3F
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 05:13:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AF5818651;
	Thu, 17 Oct 2024 05:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bXurL2c2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB4A259C
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 05:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729142012; cv=none; b=DfXQjm62iCvxwem6JfrCoCgqEkBpZH/rcHXtzVT+xQ9OzqjRPp4xcB1pw4cCvhwdLVxpFpcMN3aBI1NzrXq+w3nPtAHiFAMHlZ0JFAWPq1CU/+0YxwouRnMYXpKE9Z91PNQSVk6sV8DsyHpRJAu4qMVzVwFo1sc1vF9wNwTxK3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729142012; c=relaxed/simple;
	bh=6V6eNGdE0SPvqcSpqgKb+DQULJcURDQCfkY0VUPRIas=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tq1Ze5DXw4hWQjRWCweRPyu0KVcSsltbYfqhoMyagLztDkjb8rJHkFMjP7AREex8GLXrvB7qq6EuIj/I6KKnaQ3bQERyfUzFYkb+tYRK0YKww3X8vi0FQBMiuKWNOlAqlxPD45PfdvLFuiwWdBjlB5AxYjh3XV/qW5QTJgyfsj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bXurL2c2; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539e13375d3so558831e87.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 22:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729142009; x=1729746809; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6V6eNGdE0SPvqcSpqgKb+DQULJcURDQCfkY0VUPRIas=;
        b=bXurL2c2zXRW1vZ6OfSZLMolriV7qrpw5pGwH1BNh3VOrGYBlsvmx3fNPjzMAj4EJn
         ZfOwiocEDKv2/Y4NfmxGzqfVmp164w7MTxkxiQaeelHAS2GP0JS6AhAVTrCTsbhyoAoj
         Pr2VqiZNktsSSClkXjjRFUvusWI7qaaB6DAKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729142009; x=1729746809;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6V6eNGdE0SPvqcSpqgKb+DQULJcURDQCfkY0VUPRIas=;
        b=JEh/hMM41o2iCEuWiL/oc3kDsg82QKb9g9FiDavE0MktjL6fpthEFUDwsQf+ZiGdDY
         WuWSCOtxKdcJlnUtWOPvnDjzPLHfBCpINwl97rJu5dHgXk+82YHPnEbj9T9CSkQ3z6DL
         uD1iq0RWCVbFkg0uPC+ucPGgCEt5ZUlCXcQXlyTQ9abbRpR2XVBv6kajPXQusWOB6bED
         pL4Iu18gctmiU1yYtZWYzpinEXT62tu7ZV87KgVyRLUGK9JL0OfJqYeRLmMPyw2NFKbY
         MlGhCLi0zR/gvIol0Z0i6Z19hdUNuA0RBdVkMtfSDcLlk34hGXKYVdi3/GHZjXC4PTLY
         vFsQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7gYORraGsIv1DC+4ojhYYkvX57mahLQfksxJXzs65ymYas1A+qcaKZTpg20Ouf4eBpp7NrL5mnayx@vger.kernel.org
X-Gm-Message-State: AOJu0YyPs1mA843AXJQiTsLqxfyw+cIcU8kKJ1kOBjXoWac+YnfVE+XV
	tnrWL68L0mONoF9PW0gx4H70Itm2g34hEo6FBaj0h7TkDB9UtM0udRI1V7rWkK/SFROYIii2s+l
	XXfZ/8KDclDxVMdR/1JK1QzLfUaoVF5aiESvU
X-Google-Smtp-Source: AGHT+IFjzb2wpcnGWFDBZjNo1M6JPjsOZT8OvpkoK5cl54wpJ09jbG8ZH+YgyEBJvP+ZZVXYFVWt2kcbszuvdny5JUo=
X-Received: by 2002:a05:6512:1292:b0:53a:bb9:b54a with SMTP id
 2adb3069b0e04-53a0bb9b6f0mr1366138e87.48.1729142008876; Wed, 16 Oct 2024
 22:13:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241016223312.3430051-1-treapking@chromium.org>
In-Reply-To: <20241016223312.3430051-1-treapking@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 17 Oct 2024 13:13:17 +0800
Message-ID: <CAGXv+5FEEXYu_h=_cnLGfwVQh5kdf0KpRFKfUYgFsR5oV9s=nQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: Add port node to mt8183.dtsi
To: Pin-yen Lin <treapking@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Jitao Shi <jitao.shi@mediatek.com>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 17, 2024 at 6:33=E2=80=AFAM Pin-yen Lin <treapking@chromium.org=
> wrote:
>
> Add the port node to fix the binding schema check. Also update
> mt8183-kukui to reference the new port node.
>
> Fixes: 88ec840270e6 ("arm64: dts: mt8183: Add dsi node")
> Fixes: 27eaf34df364 ("arm64: dts: mt8183: config dsi node")
> Signed-off-by: Pin-yen Lin <treapking@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

