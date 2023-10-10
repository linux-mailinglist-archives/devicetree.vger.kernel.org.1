Return-Path: <devicetree+bounces-7114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C449B7BF3F0
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 09:18:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CB87281A4C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 07:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0EDC2E9;
	Tue, 10 Oct 2023 07:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MnZQdoua"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A87BE4B
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 07:18:54 +0000 (UTC)
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72BF19E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 00:18:52 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6c644a1845cso3657673a34.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 00:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696922332; x=1697527132; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=G/H5Uei00H5lnTHEn39KuoKlWik04qglxKYmFTTrMss=;
        b=MnZQdouaSRORyJtri6lXNvd7NfMyakrmfKCrRLoc6TSMR0ruZDOCEHtQWoo7wbYHQX
         zd8W45AmlJYqcV31TnikVcYjhOfzEFl1AIxY402t6fWvH93+x7LcwG7Z7YGQOYpt14oH
         +Wfumsanj9MCExKdsTcoBmQL4t5o6jpbm9VaFthsxt+awkIJzDNW0cSgSy+nB2BsP4uu
         ca8MNnH6PbrXGYDYZyGQJ4Aq4ZpMrgnRtZbqYDU+TkRRWW2KaeFexzIgAdQBC91j9zMX
         d6pr2wW/HAjIGNA3Qpg0hbG90Pu7gtd9xKNclRd6CJJi0mvnaJD9UgVWkaIw+1a51Rh0
         Fj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696922332; x=1697527132;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G/H5Uei00H5lnTHEn39KuoKlWik04qglxKYmFTTrMss=;
        b=BzeMhb5YLZ7twImShWlgXRlKa9I6Qohkrfa/wFaFs3MqQNZ5Vk/Op6yc/I5mFQDxqv
         saV6u9rYRM1VF4i0gTY9tQu9ztSedBg4/rd1baUvN2AVOrE1M1vvLJiQzTFMrRZnWkEu
         GGVSld5vnOF+2CuebRCL5ErzmdvugGmWeONbktVO/3P6ABu1h5AF235oQ0vwBcpLJUFJ
         zf/WZZV9sw1xYUV29l1TkXVsTogm6KcqZ+5pP3aaua404Db2gDoUKDlCoAwmEHIa00Dn
         Br+2TdyFSLJ6xCkUQjWnDIQYC8jsW6B61eErcmJ86pEsOpvivGE37oZzLTmz9iiwAEvL
         r9rg==
X-Gm-Message-State: AOJu0Yw5xBV7djKnyseVZuy8PZvt/l3K+fDcfVOi3/zNjKxYtMky/QVB
	vtIfA7vzuNEd33l92d2hg70vBw==
X-Google-Smtp-Source: AGHT+IEhtrUxtRbN5WCWnsRVjWHE6wtGl+5FwvrFdGZ4NUX7o6bt2nhr7wRDu6eYB6DJGAyPXsmzfA==
X-Received: by 2002:a05:6358:7e07:b0:134:e301:2c21 with SMTP id o7-20020a0563587e0700b00134e3012c21mr17984444rwm.15.1696922331617;
        Tue, 10 Oct 2023 00:18:51 -0700 (PDT)
Received: from localhost ([122.172.81.92])
        by smtp.gmail.com with ESMTPSA id a9-20020aa78649000000b006900cb919b8sm7442509pfo.53.2023.10.10.00.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 00:18:50 -0700 (PDT)
Date: Tue, 10 Oct 2023 12:48:48 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	konrad.dybcio@linaro.org
Cc: Robert Marko <robimarko@gmail.com>, ilia.lin@kernel.org,
	vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	agross@kernel.org, andersson@kernel.org, rafael@kernel.org,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Christian Marangi <ansuelsmth@gmail.com>
Subject: Re: [PATCH v5 2/4] dt-bindings: opp: opp-v2-kryo-cpu: Document named
 opp-microvolt property
Message-ID: <20231010071848.x4v3272poag4od4d@vireshk-i7>
References: <20230930102218.229613-1-robimarko@gmail.com>
 <20230930102218.229613-2-robimarko@gmail.com>
 <CAA8EJpoTsHhAVT3b84BC7Brvh=AUOUYSB_Z+_R-9OQ-u9BpH8A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpoTsHhAVT3b84BC7Brvh=AUOUYSB_Z+_R-9OQ-u9BpH8A@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 02-10-23, 22:07, Dmitry Baryshkov wrote:
> I suppose that simple 'true' schema should be enough since this is
> already mostly described in opp/opp-v2-base.yaml

Dmitry, Konrad,

Can you guys review the other patches in the series, since you are
also actively working on this driver ?

-- 
viresh

