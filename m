Return-Path: <devicetree+bounces-3548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D77E7AF3D1
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:08:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 91BF91C20756
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 19:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C5048840;
	Tue, 26 Sep 2023 19:07:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D77730FB5
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 19:07:55 +0000 (UTC)
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [85.215.255.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A41910A;
	Tue, 26 Sep 2023 12:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695755270; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=bmK9YiIauI3v+dHbLhOZdo5K6olJAgjjGluVMQN74bDxe2tgdlA2VR19+t+iAZcFh1
    cgojPnG48bjBW71t8eyKq1obG4eIQBMklKl/w5NATSWyTm08j1kKKXv2wJeOXkSfeN8W
    Q3g29ZZUBVbLbDMQpDXDq6/+a10gHT7BYimaunuJdlh/o7zovtGNZhlWnfsDPL5mVL+/
    mqqlHBE/39+D8CXr7SAvDzFcCLmrJ2G6qA2dy1lesrhIQZDPlwDNwc8pWIz75sK4zaTb
    roCAc4fdzh9eWub5Vu4C3NlHUivDm2Rkw2gQ8CPn80WP5DmuiQUvQ6kdHAi/dIzX6u19
    7HeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1695755270;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=uIAfzuyOkWSBhmXtnv7qdoctSqDjtDtiTDiNqyABclA=;
    b=YVERfBqahebHAuzX7dB93jWMHzoAjdkXL5tCwU9QrXO+HMosPuP14Uek/k+shSg9Uf
    mN68wFyu3OYCzO5TERpp+Mhr4yz1aXgoFgkpmGoj1gtqLv3XBMBUmEHEhOith9yLiRHB
    UpCRytDLXefKDab9Fp/sl+i9XG48x0sAUuMdn0PiDzyZEwafGbr4VK7JTUjK6asbPusQ
    70zDBeONd6TP3yTopXyG4KjAM9SpD/AAx4+wSiKOfeAKOZrYIHhAmbyJ6HSyVq8hd87k
    H6ijwqOJO0Hs/WA3Jq/qI3SgsbLuATgIdSHRj45UXSOw09AglMtkG8IQDvfmiW1calXU
    +C1w==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1695755270;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=uIAfzuyOkWSBhmXtnv7qdoctSqDjtDtiTDiNqyABclA=;
    b=T24Dc6v9Kk5enqUaX+vCpgzgLnI3Oa22QeN05xyBDZNPyPl5ytNWkI7+4SoQ7kFbDH
    Vpw2pBLPpUaCos7zbw+lNtD7tCVAF48Xm1RhmwxbxhIY6Bcrqre7H5JAfC86k27O/IHd
    hKEEU6o/yT20PJgFxlWOk5S7Wc+AyxQz78jkcY/jzK0l+D7Wm/M/ws+hGwOh6qc+o06x
    DY9DmN9TZq7QmOO3U4q+oW4hgn4S5bKU+7WvUtxViYIaYj4Sn0DzFRv89VkyQVBQvrbV
    VhvJRSzX0jdAKK9hhmJhc4iLVPgZMR62vuTanWgxzyD/cixNwjQ7UK79pfDcRRVDVuBf
    Po8Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1695755270;
    s=strato-dkim-0003; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=uIAfzuyOkWSBhmXtnv7qdoctSqDjtDtiTDiNqyABclA=;
    b=wEwob8SeFNbAHztdM6zN7erhPW9K1z0JJCmPJ6yEU5Lf/yn0MIj/i0YgB/HC/2wg4+
    YuVwLDR9KgB3Ge4FrEAw==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJD4paA8piJ1A=="
Received: from gerhold.net
    by smtp.strato.de (RZmta 49.8.2 SBL|AUTH)
    with ESMTPSA id R04c57z8QJ7ogKg
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 26 Sep 2023 21:07:50 +0200 (CEST)
Date: Tue, 26 Sep 2023 21:07:49 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH 02/13] arm64: dts: qcom: msm8916/39: Add QDSP6
Message-ID: <ZRMsBcqvB9b-IxZi@gerhold.net>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-2-398eec74bac9@gerhold.net>
 <698c8d60-e284-4267-8349-b327712c94cc@linaro.org>
 <ZRMo8oxIKJIY5WG8@gerhold.net>
 <959825a0-5327-46b7-b91d-9753601c7ba0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <959825a0-5327-46b7-b91d-9753601c7ba0@linaro.org>
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 26, 2023 at 09:05:24PM +0200, Konrad Dybcio wrote:
> On 26.09.2023 20:54, Stephan Gerhold wrote:
> > On Tue, Sep 26, 2023 at 08:46:36PM +0200, Konrad Dybcio wrote:
> >> On 26.09.2023 18:51, Stephan Gerhold wrote:
> >>> MSM8916 and MSM8939 do not have a dedicated ADSP. Instead, the audio
> >>> services via APR are also implemented by the modem DSP. Audio can be
> >>> either routed via the modem DSP (necessary for voice call audio etc)
> >>> or directly sent to the LPASS hardware (currently used by DB410c).
> >>> Bypassing QDSP6 audio is only possible with special firmware
> >>> (on DB410c) or when the modem DSP is completely disabled.
> >>>
> >>> Add the typical nodes for QDSP6 audio to msm8916.dtsi and msm8939.dtsi.
> >>> The apr node is disabled by default to avoid changing behavior for
> >>> devices like DB410c that use the bypassed audio path.
> >>>
> >>> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> >>> ---
> >> I'm generally grumpy with regards to multi-soc changes that
> >> have no need to be multi-soc..
> >>
> > 
> > Well it's 100% the same diff so reviewing it separately doesn't really
> > make sense IMHO. When I do "msm8916/39" patches these are generally the
> > changes where strictly speaking there is no need to duplicate at all.
> > It could go into a common include between both. We just haven't found
> > a good solution/agreement yet how sharing SoC components could work.
> My bottom line is that, somebody trying to track down an issue on
> one may need to unnecessarily resolve 2 merge conflicts when reverting :/
> 

I mean you could easily discard the changes in the other .dtsi. Probably
a single shell command if one knows enough "Git-fu".

Stephan

