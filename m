Return-Path: <devicetree+bounces-12560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 646597DA25D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 23:22:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E32F2825A4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 21:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988093FB26;
	Fri, 27 Oct 2023 21:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NnRhdUqm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222B53D999
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 21:22:52 +0000 (UTC)
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7142B129
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:22:51 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6cd0963c61cso1639763a34.0
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698441771; x=1699046571; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xl4zXkHeuFWcpQhNv8s/3dbQRenrc7EurtmB89vaheY=;
        b=NnRhdUqmFvEbncJOszNYxC+TzAmy8lf+FxlVYFom8vwas9FHwo82kaqjvWvAZ3mkOx
         Sjh2J9i3I1o8Ks1KrcGbmlgkWt7tnUlAha3nyNCp3u3r3AOVryhhEvCYH1V6xIwiHYRo
         /n358h0aKVIfKZbRC3TASX5gQ1oQIqSw9cTwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698441771; x=1699046571;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xl4zXkHeuFWcpQhNv8s/3dbQRenrc7EurtmB89vaheY=;
        b=X/sPpj/kwqppDJop0HLZ57RRxYe5XbYemaRoaVFsBPgB5sPowvJoWZzyvJsMR5vgQ0
         Otmm0Qbe2GdLrxdRB/m8UGEUA9/lXybqlN5aPRxiH0Q8QY/RHFRkemmnRWQU+DLZqEtc
         mYrpruNThecm0ixJW3cmUPrGZWJbje9a5Sf4Psl/ke00QpziNvwxdpi8dQ1al/kDyW+I
         K6xo5umwyUjpMAjUYw8Ap3wBjEc2g2Kaq71AMwy7i1OA0iEgCc4pPoqpW+ZdDLB5c4SW
         2JP6YxxZJ2J40HbGTAvflWsCsiA4qT0ZZWHk7nftj1OUt0AImDSBZbwdm6xUhp7qbmZk
         +00Q==
X-Gm-Message-State: AOJu0YwGypWK55NjzmTVYo9sEGTL6TPydiCj7cHxWvJLBqU/lzJe40Bq
	fk+t8//q1IjlTpZuGurBlZ5bVUp/Cj7zdLqzcz/xQg==
X-Google-Smtp-Source: AGHT+IGtyxsQVIElVPhn4PwChycLoUO0IBnOpJTJJlENkGw49YyMfxoENC/+K3LcbH4aiI2vBYPF62ksN+R8KRRbXAw=
X-Received: by 2002:a9d:7499:0:b0:6bc:8afe:8a15 with SMTP id
 t25-20020a9d7499000000b006bc8afe8a15mr4025416otk.38.1698441770745; Fri, 27
 Oct 2023 14:22:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231026191343.3345279-1-hsinyi@chromium.org> <7b737537-38f2-4404-b469-c67005cdaf83@linaro.org>
In-Reply-To: <7b737537-38f2-4404-b469-c67005cdaf83@linaro.org>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 27 Oct 2023 14:22:25 -0700
Message-ID: <CAJMQK-jQUHz8-hEx4DzNU3cOnN59JG1xFBPH5mUndLV-rbk+Jg@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] Add a few mt8183 follower boards.
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	=?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 4:17=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/10/2023 21:09, Hsin-Yi Wang wrote:
> > Add makomo, pico, and katsu which are mt8183 followers.
> >
> > v4: based on https://lore.kernel.org/all/20231025093816.44327-1-angelog=
ioacchino.delregno@collabora.com/
> >
>
> Where is the changelog? It's already v4 and still no changelog...
>

v3:https://patchwork.kernel.org/project/linux-mediatek/cover/20231025215517=
.1388735-1-hsinyi@chromium.org/
v2:https://patchwork.kernel.org/project/linux-mediatek/cover/20231024212618=
.1079676-1-hsinyi@chromium.org/
v1:https://patchwork.kernel.org/project/linux-mediatek/cover/20231024000724=
.57714-1-hsinyi@chromium.org/

changelog with previous version are in each of the patchset. eg:
https://patchwork.kernel.org/project/linux-mediatek/patch/20231025215517.13=
88735-5-hsinyi@chromium.org/

> Best regards,
> Krzysztof
>

