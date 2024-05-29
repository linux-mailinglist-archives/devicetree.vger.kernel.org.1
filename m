Return-Path: <devicetree+bounces-70348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2183A8D3234
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:50:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9D721F23F47
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C43E16D304;
	Wed, 29 May 2024 08:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="saQFZyJw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4785167DAB
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716972310; cv=none; b=iAz9M9rUPKPygyBf7Tiu4TeQvavBqVFrULTtio9Fh7K/0DQ5Uh/vqcLUYXiez5b4YasyiMwhZQAzWnNb5TA5IY0oRDjAt9fACK7xKaXZ5uSwTBo+OV/EYD/SfqL6lMOKXnFloHRnA3IFP3IqZaf8YcBedhsf5TyRMjHyX/IKlX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716972310; c=relaxed/simple;
	bh=cEQZgv7lA65Mqddsp2++Rozt4mjzOKyK0xJtWUBpnoE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i55RqWsA9FtlQVua02x+b2jNxMzOeHZAo5ssjUlSw0zGJca00E1j5DspA5tTuZOXP7hVPlDpz04ROrie9nNgXO4ACSXg9+tXz6zRbAjQ1jlLRstSyB9M05dPMUXuLMbjdz3dVMaS2pWd6yGKZv5Bw4TfSgNnItBUrmIgINR4Uq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=saQFZyJw; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dfa4ad7f6dfso336236276.1
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 01:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716972308; x=1717577108; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cEQZgv7lA65Mqddsp2++Rozt4mjzOKyK0xJtWUBpnoE=;
        b=saQFZyJw6Z0aBDilz+Rqg+rlTUm8Uc+eEZo5bPFXI6grbjxNdTaCQI+Zh/2hZ/U/b6
         taYs8d9H+9QLieLnosucA4wggU3+bRlYRaWW/t1Wg2GNo8vln3ujJRzKLxDcWANj3dQd
         e6gyuPR5/Ht6Y18uUTuUC4zFn3QukRE9QFLlFdz7MmYOLoGAjU+YQByTQanpG3Naoxii
         aRue3zC/CCx7SOiCBk4onLxsie2dgXjRrL4v1AG+7lCAgWgJuF9HDPLVtaZqIbL/v3Sg
         tbfvn/+XXTG117zdzLNxniDsiXRD206pl2CO8AZ3LKYhHOQAti+IJTqF69wurw8rfpj5
         iBTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716972308; x=1717577108;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cEQZgv7lA65Mqddsp2++Rozt4mjzOKyK0xJtWUBpnoE=;
        b=IZgsFtR7lw78xx507N0aTlNaEEWuOsgQNm5QQ3jGXBAoIq8anYMHPGwHg+hb8LuRy0
         j6HEtENDVIfyiQMs0bpcUFKWQP4WvFSOmQ3xqswA/YPWeb6tMH4a62rcJsxdlhbOYuRH
         7M/JLgVeVsIQUXXNDzbf26XwsQ/ovUqRv30LghNAyh0cJjDDFtLsyoPZhm6ae17Kdbg9
         nIT4eJxg0CboGhpKdw12Pk6a5L8+0aqqLUY1LKZtBFUvqOuczGLLpFqf7SYm4KEZ9sUs
         8aRposwCHvaWT9A1Re9YsWPQNjacSqN0irwc09HU2vGsu+6zp/I61iU8Pa/APnUL8G0r
         ksZg==
X-Forwarded-Encrypted: i=1; AJvYcCU5KEyYl5nLCspRz89TbgE5xlSdlquW31Fqmm+8UtvOJ3KYXiqnenZGiFaQKBHe8SfNxTKLfwCoLSTPIt1e4SvC6kYxlJ6prbkeXQ==
X-Gm-Message-State: AOJu0YzmjWGRztube1/oVAsidknevgjTI26ZE4Etuds3fR4v8YgjUQ1D
	uWBk7ILzIxdHd2baxnH/642lCcQOqRFs95/Dk3/4r9/mGHMu7pCvZNK3i7JE8pEh9BcF86Y6sCo
	gaF3w7BSjNToE7WzNle2daGuOTyNcp9anik0foA==
X-Google-Smtp-Source: AGHT+IHG3pzJxRaWvOHhrglnhPYr6/z3Ebb+ReDnEzXNEKzJNc+W87h4giJSH+3km64fkbhWxZHVbzSqpA9BcH4//5Q=
X-Received: by 2002:a25:8183:0:b0:df7:9762:ba42 with SMTP id
 3f1490d57ef6-df79762bf78mr9594641276.31.1716972307863; Wed, 29 May 2024
 01:45:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240528191510.1444068-1-robh@kernel.org>
In-Reply-To: <20240528191510.1444068-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 May 2024 10:44:57 +0200
Message-ID: <CACRpkdZpdjYNci0uN4yxZhYforA-0FV=YBXhmcKCw8L1NYMUhQ@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: realview: Add/drop missing/spurious unit-addreses
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 28, 2024 at 9:15=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:

> Various nodes on the Arm Realview boards have missing or spurious
> unit-addresses.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I send pull requests for these files very seldom and the risk of
collision is practically zero, could you take the patch through your
DT tree?

Yours,
Linus Walleij

