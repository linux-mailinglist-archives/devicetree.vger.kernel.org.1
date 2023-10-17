Return-Path: <devicetree+bounces-9420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0DB7CCF71
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 23:42:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 487292813F4
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99FDE2F506;
	Tue, 17 Oct 2023 21:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WEJJvi6g"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7FE2EB1C
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 21:42:10 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1681D3
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 14:42:08 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-53dfc28a2afso10582835a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 14:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697578927; x=1698183727; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OdTRJHG13Z2N6++a7YzX0QvWRCMms+vfvGikUlYHj+g=;
        b=WEJJvi6gOVWUdbp3qeBMxW0Mo4NtA6BJd54P2fn4X43U3MxNqKLM8zFgyxd76qriFi
         USlCcqYfNDKpJf3DbDJBVEUBz6BbdB1Ud2AvLCbO1UVtoVf1KgrqOQLsIhlM3zdK86rJ
         d69fxybxnKnhavvrnIN9e4cFXxVz3fzIFEFOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697578927; x=1698183727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OdTRJHG13Z2N6++a7YzX0QvWRCMms+vfvGikUlYHj+g=;
        b=WkjmSxHFFKd2SW/yAZgHlSPW1JSgYh/i67+8a6KbHpFuuQKHBlBgdJnQcnXHrSya51
         2bWfQg3fo9CQAhs5F3+oYyDUpIM8zDG+eXTr4ybkYISOol3rr9LvL3L4ge6rbojaf/4I
         X2ufSWrsiElRgfqmiXgvCj0+cEQI7R31lZrXCi3UOYdsrF/qT9b1oDe06LYiyd96+Zls
         IpxYL2smkZILxpQMjco4nwSnVrH1ETmiFLTjTcaGLMlfevX+JQFLNSCq4NCwqhY98ZII
         uUz1MPaiE2aRudrKYY4wQcFfSOi/lnB4UawlbdWs3Hb4IvuHKmqD3r+F995/6qQ5Gu01
         sxYg==
X-Gm-Message-State: AOJu0YwevfEmd/9MJLsAIEaaFpjhOL86+qphDvyCFM1yVn6ZziwAZzkp
	DHLF36Ymk+FhvaPzcBuJL3ZGKZwTKHKNtSEhOJLxVQe+
X-Google-Smtp-Source: AGHT+IEsZCb4TGbLeLkSbp3DYhjSC45bVnzWDzacx3coJ8I5zXemh9x7nNjlxtwfJTmfmjo8lrHSCg==
X-Received: by 2002:a17:906:6a08:b0:9bf:70ea:692e with SMTP id qw8-20020a1709066a0800b009bf70ea692emr2504457ejc.60.1697578926782;
        Tue, 17 Oct 2023 14:42:06 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com. [209.85.128.54])
        by smtp.gmail.com with ESMTPSA id u1-20020a17090657c100b0098ce63e36e9sm443688ejr.16.2023.10.17.14.42.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 14:42:06 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40662119cd0so13845e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 14:42:06 -0700 (PDT)
X-Received: by 2002:a05:600c:5108:b0:408:3727:92c5 with SMTP id
 o8-20020a05600c510800b00408372792c5mr46974wms.2.1697578925977; Tue, 17 Oct
 2023 14:42:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017091900.801989-1-tylor_yang@himax.corp-partner.google.com> <6c7d9c92-7616-4fad-806e-44302c33b63c@linaro.org>
In-Reply-To: <6c7d9c92-7616-4fad-806e-44302c33b63c@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 17 Oct 2023 14:41:50 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X2kZcyeyK1SBcXaViBft4F6XYtA6+JwBqJswU41V9kUQ@mail.gmail.com>
Message-ID: <CAD=FV=X2kZcyeyK1SBcXaViBft4F6XYtA6+JwBqJswU41V9kUQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] HID: touchscreen: add himax hid-over-spi driver
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Tylor Yang <tylor_yang@himax.corp-partner.google.com>, 
	Tomasz Figa <tfiga@chromium.org>, jingyliang@chromium.org, 
	poyuan_chang@himax.corp-partner.google.com, hbarnor@chromium.org, 
	jikos@kernel.org, wuxy23@lenovo.com, conor+dt@kernel.org, luolm1@lenovo.com, 
	robh+dt@kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, poyu_hung@himax.corp-partner.google.com, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	benjamin.tissoires@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, Oct 17, 2023 at 10:08=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/10/2023 11:18, Tylor Yang wrote:
> > Hello,
> >
> > This patch series adds the driver for Himax HID-over-SPI touchscreen IC=
s.
> > This driver takes a position in [1], it intends to take advantage of SP=
I
> > transfer speed and HID interface.
> >
>
> Dear Google/Chromium folks,
>
> As a multi-billion company I am sure you can spare some small amount of
> time/effort/money for internal review before using community for this
> purpose. I mean reviewing trivial issues, like coding style, or just
> running checkpatch. You know, the obvious things.
>
> There is no need to use expensive time of community reviewers to review
> very simple mistakes, the ones which we fixed in Linux kernel years ago
> (also with automated tools). You can and you should do it, before
> submitting drivers for community review.

We can certainly talk more about this, but a quick reply is:

1. If a patch really looks super bad to you then the right thing for
you to do is to respond to the patch with some canned response saying
"you didn't even do these basic things--please read the documentation
and work with someone at Google to get a basic review". This seems
like a perfectly legit response and I don't think you should do more
than that.

2. IMO as a general rule "internal review" should be considered
harmful. When you're a new submitter then absolutely you should get
some internal review from someone who has done this before, but making
"internal review" a requirement for all patches leads to frustration
all around. It leads to people redesigning their code in response to
"internal review" and then getting frustrated when external
maintainers tell them to do something totally different. ...then
upstream reviewers respond to the frustration with "Why were you
designing your code behind closed doors? If you had done the review in
the public and on the mailing lists then someone could have stopped
you before you changed everything".

3. The ChromeOS team is organized much more like the upstream
community than a big hierarchical corporation. Just as it's not easy
for you to control the behavior of other maintainers, it is not
trivial for one person on the team to control what others on the team
will do. We could make an attempt to institute rules like "all patches
must go through internal review before being posted", but as per #2 I
don't think this is a good idea. The ChromeOS team has even less
control over what our partners may or may not do. In general it is
always a struggle to get partners to even start working upstream and
IMO it's a win when I see a partner post a patch. We should certainly
help partners be successful here, but the right way to do that is by
offering them support.

About the best we can do is to provide good documentation for people
learning how to send patches. Right now the ChromeOS kernel docs [1]
suggest using "patman" to send patches and I have seen many partners
do this. Patman will, at the very least, run checkpatch for you. Our
instructions also say that you should make sure you run "checkpatch"
yourself if you don't run patman. If people aren't following these
docs that we already have then there's not much we can do.


So I guess the tl;dr from my side:

a) People should absolutely be posting on mailing lists and not (as a
rule) doing "internal review".

b) If a patch looks really broken to you, don't get upset and don't
waste your time. Just respond and say that you'll look at it once it
looks better and suggest that they get a review (preferably on the
mailing lists!) from someone they're working with at Google.


https://chromium.googlesource.com/chromiumos/docs/+/HEAD/kernel_development=
.md#send-out-the-patch-using-patman


-Doug

