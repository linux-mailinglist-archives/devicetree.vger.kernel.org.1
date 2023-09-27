Return-Path: <devicetree+bounces-3881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 913B97B0543
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:22:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 420ED281A5B
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0829430FB1;
	Wed, 27 Sep 2023 13:22:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C7B1CAB6
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:22:18 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E54F121
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 06:22:17 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-31f737b8b69so9651006f8f.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 06:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695820936; x=1696425736; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B4t8SMIb+aaRBITzGumRvFCVICUhpBpI6WIpWYOA324=;
        b=q5NF3y+/iqeB3YgWYyO+wtFahg+N8huzD1NlX/bqD//GXmfAtNm9XUiXrj0pZyL8NZ
         6E/EyRp7JNrLnIrMQq0hMME2aNh72bRc2dqlUqqSYKpds0ZzbjjX/DunNzGFqcTZdWm8
         NSpitxVbPrpH1UjOXr1lCNbCOors7/pmpFybhKApblLFqwWyYm7LaGSDA3OzrwsZ1BiR
         e7HSXg2qMrblkSf5Ab/DhKv5jJ4zMaS7Cw24wT6xGs60lhVqBMIEl1Gl83F2qpPvpoNb
         9V8n8mnf8DtC+8nZon5CM2pVVYDvlG1H8czq0tMQdtZiszrHghR07hkj/axOy4uFReh3
         K8zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695820936; x=1696425736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B4t8SMIb+aaRBITzGumRvFCVICUhpBpI6WIpWYOA324=;
        b=k06SVn9P0VixRwTLHBtDf76yZXmrNnsWCGgwJEiPQqwE4yDgcHM5UnYblTpf/PncAG
         L9zwKoBvnVDqWJzXSlPo+Mfe4VFL7ab1/RsIOb3JYIgpke3mjx/8klOPAnbxxWQ8N6TA
         ryuGe8o9IGvIbKk/vzg4NvF6HWfjnokgWplP9Mj8Jbxo48rRST+2rQJxIcLr5HDcVFlT
         Le9K+g8EOlbtj8h7+GkKSw1p0yBrklOazWcnsRWXlC/KpKx290Um9rwOY5BMuPAN/q/R
         dG5455ISm/wCg/CsyK8QNA4VVQhzHudHYoMjHxCEUOCrpv+VbDpe0GMeZU7CX6HUat0Z
         5LMA==
X-Gm-Message-State: AOJu0YwI/2N3cTVrZb86Y4/j6SnMerZWRcdDrlqry3BRVyKqrGouo0/k
	FgmdXOck4mqAcE0z4XfZi/LomA==
X-Google-Smtp-Source: AGHT+IFqrcn5hr4kRIJXh34PCTleWf76T9zn8n1G+X6t7JwnKWOk356wLHy7eTKPvvtXc9qvv9gXFw==
X-Received: by 2002:a5d:6388:0:b0:321:3c37:ec81 with SMTP id p8-20020a5d6388000000b003213c37ec81mr1765749wru.10.1695820935706;
        Wed, 27 Sep 2023 06:22:15 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id d29-20020adfa41d000000b003197869bcd7sm12045469wra.13.2023.09.27.06.22.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 06:22:15 -0700 (PDT)
Date: Wed, 27 Sep 2023 16:22:10 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: wangweidong.a@awinic.com
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	perex@perex.cz, tiwai@suse.com, shumingf@realtek.com,
	rf@opensource.cirrus.com, herve.codina@bootlin.com, arnd@arndb.de,
	13916275206@139.com, ryans.lee@analog.com, linus.walleij@linaro.org,
	ckeepax@opensource.cirrus.com, doug@schmorgal.com,
	fido_max@inbox.ru, harshit.m.mogalapalli@oracle.com,
	liweilei@awinic.com, yang.lee@linux.alibaba.com,
	u.kleine-koenig@pengutronix.de, yijiangtao@awinic.com,
	colin.i.king@gmail.com, trix@redhat.com,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V5 6/8] ASoC: codecs: Modify the code related to the
 property
Message-ID: <ce82d523-dc8a-4d04-8762-6cc6d5d3478a@kadam.mountain>
References: <20230927121634.94822-1-wangweidong.a@awinic.com>
 <20230927121634.94822-7-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927121634.94822-7-wangweidong.a@awinic.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 27, 2023 at 08:16:32PM +0800, wangweidong.a@awinic.com wrote:
> From: Weidong Wang <wangweidong.a@awinic.com>
> 
> Change "sound-channel" to "awinic,audio-channel".

I'm not super happy that we are doing part of the sound-channel rename
as part of this patch instead of all at once in the same patch.

> Change "aw88261_smartpa" to "aw88261".
> Change "sync-flag" to "awinic,sync-flag".
> These changes are made to align with yaml files.
> 
> Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>

regards,
dan carpenter


