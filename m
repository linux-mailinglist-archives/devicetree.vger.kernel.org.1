Return-Path: <devicetree+bounces-3803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 805037B02BD
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:24:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 31BCD282821
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CD56266B7;
	Wed, 27 Sep 2023 11:24:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37D06D19
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 11:24:29 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08C3719C
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 04:24:28 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c5c91bec75so78718695ad.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 04:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695813867; x=1696418667; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vmVJzfHE3vQ/lTZ+43o8mLraNAwtCdKaHY6VtnSgr7U=;
        b=ZmH/kC9lLlp3gWZkDTK5S3BptRT8iVEgK6HbUP5+EZQquHBz7qCrIwgGkSohKD8HLX
         KPPv0BT48Ye2oXSOX/wovoeE7nlSXD5wd0e+w9pGU6BU+wFmzD1U34BcdL9rQ4IK90QV
         fTZOp5c/GszVy4zw0kzTZp0ryrvC/LrqoOmIvv+4jHaD0+sp/7UykfPQ4/mEwF1dLO3T
         SYcdPQF/+5tLahBP19v1DBbYHDB38N9ZvwpmSGkcOs2KDrZAoklDP5CDGMVCK0ZloMaM
         D5tEL+r++iE5iBosmmyQx2fC7bMBIb0PMhzC1y/5tFEiMgaNLof/++hddmvz9ZpTF6O1
         PVuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695813867; x=1696418667;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vmVJzfHE3vQ/lTZ+43o8mLraNAwtCdKaHY6VtnSgr7U=;
        b=TUujxVthUck3k+l7/MRmTfxSnMmFcQ3XhoyBbdReIbnRLyZo3bOZaAsJvaHvRqf9lP
         +lSzZpgC2zMesG8FsM2dtkQVHd8if6KXpzqIdRBgiaKeK3ZKuoTjzZocJF1MJ6Cqb6nL
         cNo2y+SDG4Rxw+wurMceXvGbmLSZ+CCm0g7zuvJWDKZV2I3ho43Ydv5Nckt6FmOPUi4E
         wLnnJvque3RP0DjmlmYO7Yy05CVgX01LzUSz8lpDn5EPHvgVqKzqkfVun5QVkKsp2xkb
         bFyd6qNA6F3CJQ5CA6MQC2iAqgLpkgUFgsUmub4giP4ToO9XyCuAgr5Z7b62hbFzFAF+
         nndw==
X-Gm-Message-State: AOJu0YxTl5aqyoR06wDnf0leMT0TKtX8QBUixxo+bDzVuqKv9JiGk8h9
	ASbLTUfF5Cz+FRaHERFebtcRZg==
X-Google-Smtp-Source: AGHT+IGj48IsQLfFZkeOQC4tbS38mJkUy5+WRSSa3+XW5UWtGE4ixlhmRgKJ3yIrY+gEMnfBOkHekA==
X-Received: by 2002:a17:902:e5ce:b0:1c4:32da:2037 with SMTP id u14-20020a170902e5ce00b001c432da2037mr1427219plf.64.1695813867494;
        Wed, 27 Sep 2023 04:24:27 -0700 (PDT)
Received: from localhost ([122.172.81.92])
        by smtp.gmail.com with ESMTPSA id b8-20020a170902d50800b001bf11cf2e21sm12751587plg.210.2023.09.27.04.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 04:24:27 -0700 (PDT)
Date: Wed, 27 Sep 2023 16:54:25 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, ilia.lin@kernel.org,
	agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	rafael@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	mturquette@baylibre.com, sboyd@kernel.org,
	quic_kathirav@quicinc.com, linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v1 05/10] dt-bindings: cpufreq: qcom-cpufreq-nvmem:
 document IPQ5332
Message-ID: <20230927112425.763qlhilfld5lecd@vireshk-i7>
References: <cover.1693996662.git.quic_varada@quicinc.com>
 <8fe23b5401362e214078648926a00f7ceefaa542.1693996662.git.quic_varada@quicinc.com>
 <3f68d3bf-3273-2339-ea41-3362ced3c91b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3f68d3bf-3273-2339-ea41-3362ced3c91b@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 07-09-23, 08:03, Krzysztof Kozlowski wrote:
> On 07/09/2023 07:21, Varadarajan Narayanan wrote:
> > Document IPQ5332 compatible for Qcom NVMEM CPUFreq driver.
> > 
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied. Thanks.

-- 
viresh

