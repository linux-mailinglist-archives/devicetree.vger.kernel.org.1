Return-Path: <devicetree+bounces-126136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE169E0578
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:49:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94E3128A5BE
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD6120A5E2;
	Mon,  2 Dec 2024 14:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9VuqbqC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796FD205E1C
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733150305; cv=none; b=RaetOJLYEcVL6wtLNquGGuSbKMK+N1u1eArKK0sidOac9WYjQhjgQKiO6Hq4WXPkDsNKWv0J30+4DYEGHZlyotvD2h2H2T4j+d9P3jN2p2zzqCwEu1bo0Pjoa0utkZ7n8vc1tEeS2hqLt3bzJnMcnjI8ak+W6+DCfuyR6WMqjzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733150305; c=relaxed/simple;
	bh=/4OldmAX60R2p8Fl76Y6iFrCsg+jJ7CHBVTLdrH+FEg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HmumFc/wsgHwaeOM/GNiNRHy7YxcE3EFAO3h7ouwhs30vOYWZKuZaMstvfYX3RD9Tc/kHAy5O4QfDL6ANae1uHUcjqyWujc0FrHDGYHnltEvnLRnoMQ1YCNsL4MvPiWc5f69/2o31BiV72EzgV2qHRSoGtyCh48qAy19JBS9qx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9VuqbqC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E444EC4CED2
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733150304;
	bh=/4OldmAX60R2p8Fl76Y6iFrCsg+jJ7CHBVTLdrH+FEg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Y9VuqbqClqeEJeIdOIh8rYIyzT21hSBEEc/+j6SeJh21S1QaQth+tpITo072r6bEA
	 Z/y+OTa3k7I7Ocxw2dpGwvM3nCfnEq0k6WNIvJ1v1kyzBSFs+9LHapSxWoqzTXfoet
	 NHzKX0zV3IBmKHsO7bqqwYzwNt24GKWBPUkodmEWyStxgUoYJeyJI9mCFBRnjrf5vq
	 v9cCJ1Nm1WhkN0XYEQUdjVAOOeTT5arqxMz9CIhNkSnne6KZK2pyBCxeCix5r4ufCP
	 8O8yFMHq3hgpu9gYokDF3Cwe87UsiD3wU+GRiJ4NeS7UDd9XstbW6iKwAPZqUKEMWm
	 xuuGmoLajpLYg==
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-71d3e506981so1730793a34.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:38:24 -0800 (PST)
X-Gm-Message-State: AOJu0Yy16nxbeOyY4TWW+usui7yQxM+5WcGQLzdFK9wU5JIC63nXQWOh
	ZIAsEkfnawiwqjYmCgpo2pDQ41A1Zg6WRL9uyXzGSmU9hWNn+O9vF5z8HEbKz4jl27WOdGHliid
	8UYTbfxyPejafOVyxvdEgumwutw==
X-Google-Smtp-Source: AGHT+IHbVLSo9NqaEqaK3o5TtnMM5XLARLnyKn/sMlrijObWI3558inKGgLRHY5tfcGyK5uxBJ+lLky1TUaXCBJwhtc=
X-Received: by 2002:a05:6830:f94:b0:71d:4d88:2297 with SMTP id
 46e09a7af769-71d65d3b3bbmr19135775a34.30.1733150304244; Mon, 02 Dec 2024
 06:38:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <f97dc442-b306-487a-9699-f38544bd7219@de.bosch.com>
In-Reply-To: <f97dc442-b306-487a-9699-f38544bd7219@de.bosch.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 2 Dec 2024 08:38:13 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+_VRqG1eMsfZuvftpQ8Eivwsqb0L2gvi4m3pQvdGwXRg@mail.gmail.com>
Message-ID: <CAL_Jsq+_VRqG1eMsfZuvftpQ8Eivwsqb0L2gvi4m3pQvdGwXRg@mail.gmail.com>
Subject: Re: of_unittest: Missing #address & #size-cells warning
To: Dirk Behme <dirk.behme@de.bosch.com>
Cc: devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 28, 2024 at 1:04=E2=80=AFAM Dirk Behme <dirk.behme@de.bosch.com=
> wrote:
>
> Hi,
>
> on recent Linus' master from today [1] I'm getting [2] running the
> of_unittests.
>
> Is this known and/or is there somewhere a fix?

No and no. Thanks for the report, I'll work on a fix today.

Rob

