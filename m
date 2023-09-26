Return-Path: <devicetree+bounces-3545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 777DD7AF3C5
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:06:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 299BC2812CD
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 19:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF65247C98;
	Tue, 26 Sep 2023 19:06:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE37E30FB5
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 19:06:26 +0000 (UTC)
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5EFF11D;
	Tue, 26 Sep 2023 12:06:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695755180; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=FhZ8x2pDtr4FnxuNgqL0n8dJB9ry2Nwqm6i/vZ0Ufd+HD1SlSqq5qxnLYbN5m97g9o
    VboYSaC9ji/wqnIAOCHueym9FbaqTiIFzPVgslZ4v3vJgmhgzw19XeDVqIMZDbpULzWI
    zFVf1aK3Ss/TGvkBg4dM5cAi816h+laviP1DdTBQ6m2nT6Kokr40uh/Fz1BdAsEbU1HD
    vhFf1vscDCwzhrNDtVFVW/0SliLV6To/Uoayn+UyQHK6PngwEUNlM1jwkhzsdcYBtW4x
    6ftNb5qrbtDaWC+tiUJ+CgCyB9AGFZy3rB5E8k/wZOoJ6IQ+KHSoCiFWEf/YDuB0zQNa
    7fZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1695755180;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=itS1ErekKPc+u+bCJwSyYH3l8tgYgk3gKJxDoF6V9q0=;
    b=YfZNyP7Pnm97bMg6/TE3E66k+qBNT6AyKaFMS7olvdtYyFJoN8xPT3TcuWKFRE9N/N
    7wjA/Nak1tNvYe+r/VLpJSEPHaLF47INdf9lWIKT2IiFDOvmJ4Sf+Z21SUE0AbIJ6s1C
    NyQRxaDSXpA92+TxM0+dV56QaRuBoUfw52AM8OeQDGytJCGzq5LY2t45CZHurWesx/AY
    v0cduXJhgMrdpnwnx0H8YGJ/u7ZDEQaCifcYw1F3o204YcHJi4zjvl0hmS0Jvc+s13M1
    7GbIsEgXQQn0nGLS5/Pgry33s4NhXNGv3RaTuZCPAStK1GTuOssX8w/DUGKZuehT5h+U
    m+7A==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1695755180;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=itS1ErekKPc+u+bCJwSyYH3l8tgYgk3gKJxDoF6V9q0=;
    b=MzbJw+gbrzd65D/gLBYc0TEmgThxnnGu7mw6YiwcethsUa7f4C98MBaYnPtr0RKA8I
    cGi5HlW7Mdl1SMcPZSXkV951/6bUZWiyJcod1Nc3GqkL0NHNlCptAq+Uov9aMGiFoSkN
    PCV+gnZpOKm5JY3JJxHi18hu6YVJvzgTH6hZjDZU+luP6XJSp9ULwdV63wwq2unYAeCQ
    fhR27L8AH6FrM3hKKE9THucmUS2WJbb6YjEoZcFvUUciEDzyKKQeGozEeyrXz6Jp8+MO
    Ivl1zjBbVz/Miph/zNi24WZUvSkcIv1TNIW+7hhctmuLP2XooFshkNYOzUwGNo7hEDOH
    rNIQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1695755180;
    s=strato-dkim-0003; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=itS1ErekKPc+u+bCJwSyYH3l8tgYgk3gKJxDoF6V9q0=;
    b=bH1ozSTNp4r7zE/PC7rLVd1oPdRH8dIT86EbUy97iavtwnQG8mBV5bZKeKwt1ZpRD6
    t2pC+OLggrXiUaXdrpCQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJD4paA8piJ1A=="
Received: from gerhold.net
    by smtp.strato.de (RZmta 49.8.2 SBL|AUTH)
    with ESMTPSA id R04c57z8QJ6KgKW
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 26 Sep 2023 21:06:20 +0200 (CEST)
Date: Tue, 26 Sep 2023 21:06:18 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH 03/13] arm64: dts: qcom: msm8916: Add common
 msm8916-modem-qdsp6.dtsi
Message-ID: <ZRMrqsZ0QeDNFHFj@gerhold.net>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-3-398eec74bac9@gerhold.net>
 <45665b43-3be9-4f27-aa88-12cdef56346d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <45665b43-3be9-4f27-aa88-12cdef56346d@linaro.org>
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 26, 2023 at 08:49:24PM +0200, Konrad Dybcio wrote:
> On 26.09.2023 18:51, Stephan Gerhold wrote:
> > Most MSM8916/MSM8939 devices use very similar setups for the modem,
> > because most of the device-specific details are abstracted by the modem
> > firmware. There are several definitions (status switches, DAI links
> > etc) that will be exactly the same for every board.
> > 
> > Introduce a common msm8916-modem-qdsp6.dtsi include that can be used to
> > simplify enabling the modem for such devices. By default the
> > digital/analog codec in the SoC/PMIC is used, but boards can define
> > additional codecs using the templates for Secondary and Quaternary
> > MI2S.
> > 
> > Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> > ---
> I'd rather see at least one usage so that you aren't introducing
> effectively non-compiled code..
> 

There are 10 usages in the rest of the patch series.
Is that enough? :D

IMHO it doesn't make sense to squash this with one of the device
patches, especially considering several of them are primarily authored
by others.

> >  arch/arm64/boot/dts/qcom/msm8916-modem-qdsp6.dtsi | 163 ++++++++++++++++++++++
> >  1 file changed, 163 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/msm8916-modem-qdsp6.dtsi b/arch/arm64/boot/dts/qcom/msm8916-modem-qdsp6.dtsi
> > new file mode 100644
> > index 000000000000..ddd74d428406
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/msm8916-modem-qdsp6.dtsi
> > @@ -0,0 +1,163 @@
> > +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-3-Clause)
> > +/*
> > + * msm8916-modem-qdsp6.dtsi describes the typical modem setup on MSM8916 devices
> > + * (or similar SoCs) with audio routed via the QDSP6 services provided by the
> > + * modem firmware. The digital/analog codec in the SoC/PMIC is used by default,
> > + * but boards can define additional codecs using the templates for Secondary and
> > + * Quaternary MI2S.
> > + */
> > +
> > +#include <dt-bindings/sound/qcom,q6afe.h>
> > +#include <dt-bindings/sound/qcom,q6asm.h>
> > +
> > +&apr {
> > +	status = "okay";
> > +};
> > +
> > +&bam_dmux {
> > +	status = "okay";
> > +};
> > +
> > +&bam_dmux_dma {
> > +	status = "okay";
> > +};
> > +
> > +&lpass {
> > +	status = "reserved"; /* Controlled by QDSP6 */
> > +};
> > +
> > +&lpass_codec {
> > +	status = "okay";
> > +};
> Any reason for it to stay disabled?
> 

You mean in msm8916.dtsi? For the SoC dtsi we don't make assumptions
what devices use or not. There could be devices that ignore the internal
codec entirely. If there is nothing connected to the codec lpass_codec
should not be enabled (e.g. the msm8916-ufi.dtsi devices).

This include is a bit more "opinionated", to reduce duplication for
the most common setup. But it's separate and optional to use. The SoC
dtsi is included by everyone.

> > +
> > +&mba_mem {
> > +	status = "okay";
> > +};
> > +
> > +&mpss {
> > +	status = "okay";
> > +};
> > +
> > +&mpss_mem {
> > +	status = "okay";
> > +};
> > +
> > +&pm8916_codec {
> > +	status = "okay";
> > +};
> Ditto
> 

Same as above.

> > +	multimedia1-dai-link {
> > +		link-name = "MultiMedia1";
> Newline before last property and subnodes, please
> 

Thanks, will change this!
> 
> > +	sound_dai_secondary: mi2s-secondary-dai-link {
> > +		link-name = "Secondary MI2S";
> > +		status = "disabled"; /* Needs extra codec configuration */
> Hmm.. Potential good user of /omit-if-no-ref/?
> 

AFAICT /omit-if-no-ref/ is for phandle references only. Basically it
would only work if you would somewhere reference the phandle:

	list-of-sound-dais = <&sound_dai_primary &sound_dai_secondary>;

But this doesn't exist so /omit-if-no-ref/ cannot be used here.

Thanks,
Stephan

