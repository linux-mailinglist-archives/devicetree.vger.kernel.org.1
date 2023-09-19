Return-Path: <devicetree+bounces-1459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B30E7A662B
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 16:07:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D3161C20F35
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9E638DF0;
	Tue, 19 Sep 2023 14:07:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEBF38BAF
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 14:07:41 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5C4CF1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695132458;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LMykJCQlkdtke1jV1HRdImSUTkLSJsXVxgTZNCPIZuo=;
	b=YdlW2ba2I7NSmtpcmE4N3hq/maXNiZLFdq+Cg32QtRTa94BkLSQODqyQIvBjMt1PJQL99p
	ayxKBu0imd7omdO52xm40kXbrsOK15yFJ/sxrfzgAQZ+vRX9kqrCUx0oyIaUqkigKhIzJD
	mh7tm8NTEMbkIsn+QxjwAjbpmAxsFI4=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-649-2DztJh6bOjmMZFOsVYpP4w-1; Tue, 19 Sep 2023 10:07:37 -0400
X-MC-Unique: 2DztJh6bOjmMZFOsVYpP4w-1
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-9a9cd336c9cso130193366b.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:07:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695132456; x=1695737256;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LMykJCQlkdtke1jV1HRdImSUTkLSJsXVxgTZNCPIZuo=;
        b=DwyfKB2YX1pG79oJr2LwSaQ+th1Zv6qXjLOSuwvBfpPmg+BeuvHx0WjXZz+fZRXx6r
         sde5SBqBaPiakhVqBWFtX0w3Dv0kwK6f36Pu3nciJNMNnfetvzyh0/j7aWJ5VKXLx1qA
         csX803P82DlNVIAPksQ6u5YWtWg3Jlec8Tvu0VHeRHcokuDFltyWTBxl7fgR3X/T95xI
         4/Ruc+jCe5aIfEyjxcmZ0wedNsvjZTSaEJhkHDDPtpHr3r7DizZ7XrzOym/tne80vxRu
         nsdck5AuZVEe1RsAxyk76c2xyKYLkedjKgA/OlJs2goKwKjmePvs80Lm3/hlZIVhXHcp
         DZJQ==
X-Gm-Message-State: AOJu0YyrwDQxMjhSryhz0b307ESZCnnOfD22p5kZ7/SDPV1RJrmKysPP
	4NQHNyQ1XIa+d2SlYPEHhklSByScTklXoL5V6m6OWAJowg6vtI31kvnFQTMMqq5oynlGppcQq+Q
	pBXbHx4xU7Ti02R9nEb1UMg==
X-Received: by 2002:a17:906:74ca:b0:9a1:eb67:c0d3 with SMTP id z10-20020a17090674ca00b009a1eb67c0d3mr10338012ejl.4.1695132456052;
        Tue, 19 Sep 2023 07:07:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENFS4cpAX8S6AwUFpq/x09AJbWBVQNwDPOx+C99DIJFQmc2UIwUgdKqqVnaAY0+5cwFRnW1g==
X-Received: by 2002:a17:906:74ca:b0:9a1:eb67:c0d3 with SMTP id z10-20020a17090674ca00b009a1eb67c0d3mr10337985ejl.4.1695132455690;
        Tue, 19 Sep 2023 07:07:35 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-241-221.dyn.eolo.it. [146.241.241.221])
        by smtp.gmail.com with ESMTPSA id fi8-20020a170906da0800b00997e00e78e6sm7851723ejb.112.2023.09.19.07.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 07:07:35 -0700 (PDT)
Message-ID: <6243f8f6b0e110ba48a9e6e974ea3de875857f49.camel@redhat.com>
Subject: Re: [PATCH v2 net-next 09/17] net: ethernet: mtk_wed: fix
 EXT_INT_STATUS_RX_FBUF definitions for MT7986 SoC
From: Paolo Abeni <pabeni@redhat.com>
To: Daniel Golle <daniel@makrotopia.org>, Lorenzo Bianconi
 <lorenzo@kernel.org>
Cc: netdev@vger.kernel.org, lorenzo.bianconi@redhat.com, nbd@nbd.name, 
 john@phrozen.org, sean.wang@mediatek.com, Mark-MC.Lee@mediatek.com, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, 
 linux-mediatek@lists.infradead.org, sujuan.chen@mediatek.com,
 horms@kernel.org,  robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 devicetree@vger.kernel.org
Date: Tue, 19 Sep 2023 16:07:33 +0200
In-Reply-To: <ZQg2AxAIxkadOiIr@makrotopia.org>
References: <cover.1695032290.git.lorenzo@kernel.org>
	 <ebde071cc3cc9c35b00366c41912ee2f25e5282d.1695032291.git.lorenzo@kernel.org>
	 <ZQg2AxAIxkadOiIr@makrotopia.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 2023-09-18 at 12:35 +0100, Daniel Golle wrote:
> On Mon, Sep 18, 2023 at 12:29:11PM +0200, Lorenzo Bianconi wrote:
> > Fix MTK_WED_EXT_INT_STATUS_RX_FBUF_LO_TH and
> > MTK_WED_EXT_INT_STATUS_RX_FBUF_HI_TH definitions for MT7986 (MT7986 is
> > the only SoC to use them).
>=20
> Afaik this applies also to MT7981 which is very similar to MT7986.

FTR, I read the above as this series is going to additionally
support/work fine with MT7981; no modification asked here, fine to be
merged.

Please scream loudly soon otherwise ;)

Thanks,

Paolo


