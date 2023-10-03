Return-Path: <devicetree+bounces-5548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EB77B69B3
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:02:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D8AA5281749
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D0424213;
	Tue,  3 Oct 2023 13:02:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE7724209
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:02:04 +0000 (UTC)
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [81.169.146.164])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C194BB;
	Tue,  3 Oct 2023 06:01:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696338115; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=K6+CPrYO0ApXPmGEp8FHGc+LNByfwIPuVTAHxEoBcg3p1DPvvdaFdYoCc6+z5oheCX
    4XhaCyB/anVeeFCU4fiEAIKQaf0rsXmxTEdowb/1Fe87XMGw8xNEJPq6nYqId02gfuJh
    w2/pSpLl9eyeim+LQRAIf0EFAqZt9hzFmIhrhrSUKO/GoSTl3Hta3s7e5nNONzNFLEM9
    Dj9xSkF1/aK8m2UOCGT0fT2dHdQ6F2Q9MJC0okdJ/MadBvdPem4hD8i7pLbJXr5f7s/5
    D/xPSzLwMAPuSgfZULd0SjLT3xcpsebVy3MpzFU71aKpQQFV2VDCcFS3bogGtIW2HyIB
    Cosg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1696338115;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=AvW+X7TnuvQSmOQWBDMXpfLpHp0X0rQYKQIMVG8JkH8=;
    b=kbLGHLsDn9OOxnyTXp0jYcGCyAPdSCJ9d+sZFfH7x1Y/LJQKusCj9ub35aJmZo5cNF
    W/XULx9gJooj2VjmMFWRabVW8Byp9FsjM3VJl9VDxPPrU9LArjL+NIPCMiJFQ8jvjBxi
    Txybm1d6reFAAllbpxGD9syLdSvsBvjQaNyuwTZnDkhO1XSXUNa9uKPjpoMG1ZYLOx7i
    u5YMnVdNs5iTiFxIQcPspTUj+/E650yscVX8PfTc1MxP/tJYzAF1NNhbKTtLNAFWv6T1
    hdpTC6j8SrS+vZ4n7Jj+eZWlypQsnizLTTF+HoS8b401aMEkS4CFq+aufQE6yYS8x4nI
    Dfvw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1696338115;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=AvW+X7TnuvQSmOQWBDMXpfLpHp0X0rQYKQIMVG8JkH8=;
    b=feZ+cqNwotdO3KEoXEawSFD/lJNElCylDGN5F+Y64jbK5AUmxzqcr/g18yj5oRxrQP
    kyJ87Qykgwge5XYZMa92W/gkuFI5UkdSyNvmozR9XDBz2xTP8CTz5OzhencnFSU2TM8L
    rjPtsHF9amIEQa2mT8DIgjGZJDf3aHqgxXZfvZimkiJISsjE/93UtjQ0GuZXdyBTuQyB
    +v1V7hEOAKgrhbNZ54/MsjDEBiT69igvSeXChDgNTk1s4SVyziy4Cg46SLAN3h8K7FTO
    Gr0CfYOvywQcR8hBQuGOmLZg9TIgCkbDsnYL7N5rEy1aqfFPL3aFopY+kFK5Q9vGK3uC
    3zWQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1696338115;
    s=strato-dkim-0003; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=AvW+X7TnuvQSmOQWBDMXpfLpHp0X0rQYKQIMVG8JkH8=;
    b=GdV0/i8ao1XAWoe0l249j8oEISXEw5v65hSiDlVEhuGGCJUf32aObuXz+mYZvz2NW/
    TYxc0BZ2JH0N7bBJuBDw==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJD4peA8paF1A=="
Received: from gerhold.net
    by smtp.strato.de (RZmta 49.8.2 DYNA|AUTH)
    with ESMTPSA id R04c57z93D1s2Me
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 3 Oct 2023 15:01:54 +0200 (CEST)
Date: Tue, 3 Oct 2023 15:01:48 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Georgi Djakov <djakov@kernel.org>, Ilia Lin <ilia.lin@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Nishanth Menon <nm@ti.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
	Christian Marangi <ansuelsmth@gmail.com>
Subject: Re: [PATCH v4 05/23] interconnect: icc-clk: add support for scaling
 using OPP
Message-ID: <ZRwQvP_GbvwvLAn8@gerhold.net>
References: <20230827115033.935089-1-dmitry.baryshkov@linaro.org>
 <20230827115033.935089-6-dmitry.baryshkov@linaro.org>
 <493aff10d698c9ca5bdbeae45250f5fe.sboyd@kernel.org>
 <7312633f-3b53-43a1-b6e3-010513c2a1e2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7312633f-3b53-43a1-b6e3-010513c2a1e2@linaro.org>
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 03, 2023 at 11:30:28AM +0300, Dmitry Baryshkov wrote:
> On 28/08/2023 21:09, Stephen Boyd wrote:
> > Quoting Dmitry Baryshkov (2023-08-27 04:50:15)
> > > diff --git a/drivers/interconnect/icc-clk.c b/drivers/interconnect/icc-clk.c
> > > index d787f2ea36d9..45ffb068979d 100644
> > > --- a/drivers/interconnect/icc-clk.c
> > > +++ b/drivers/interconnect/icc-clk.c
> > > @@ -25,12 +28,16 @@ struct icc_clk_provider {
> > >   static int icc_clk_set(struct icc_node *src, struct icc_node *dst)
> > >   {
> > >          struct icc_clk_node *qn = src->data;
> > > +       unsigned long rate = icc_units_to_bps(src->peak_bw);
> > >          int ret;
> > >          if (!qn || !qn->clk)
> > >                  return 0;
> > > -       if (!src->peak_bw) {
> > > +       if (qn->opp)
> > > +               return dev_pm_opp_set_rate(qn->dev, rate);
> > 
> > Just curious how does lockdep do with this? Doesn't OPP call into
> > interconnect code, so lockdep will complain about ABBA?
> 
> Unfortunately it does. It seems, the icc-clk is not a proper way to go here.
> I will take a look at reusing set_required_opps for this case.
> 

Could you elaborate a bit which locks exactly cause trouble here?
I'm probably missing something here.

From a quick look at the OPP code I don't see a global lock taken there
for the entire OPP switch sequence, so I'm not sure how this could cause
an ABBA deadlock.

Thanks,
Stephan

