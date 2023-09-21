Return-Path: <devicetree+bounces-2033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7F17A986F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:44:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2782328273A
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E30D1173D;
	Thu, 21 Sep 2023 17:22:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8641515AD9
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:19 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 20FEF46DC3;
	Thu, 21 Sep 2023 10:13:57 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35FE01692;
	Thu, 21 Sep 2023 06:36:26 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A5313F5A1;
	Thu, 21 Sep 2023 06:35:47 -0700 (PDT)
Date: Thu, 21 Sep 2023 14:35:44 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Cristian Marussi <cristian.marussi@arm.com>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>, Nikunj Kela <nkela@quicinc.com>,
	Prasad Sodagudi <psodagud@quicinc.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v3 08/13] dt-bindings: arm: cpus: Add a power-domain-name
 for a performance-domain
Message-ID: <20230921133544.sxzpo3xyrttnrtzt@bogus>
References: <20230825112633.236607-1-ulf.hansson@linaro.org>
 <20230825112633.236607-9-ulf.hansson@linaro.org>
 <20230921111110.tbffr5sik3ycw7gf@bogus>
 <CAPDyKFrSkgSee=8zruR65TALvAj+hcWw1CaUOUwD3EpdxymtBg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFrSkgSee=8zruR65TALvAj+hcWw1CaUOUwD3EpdxymtBg@mail.gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 21, 2023 at 03:22:54PM +0200, Ulf Hansson wrote:
> On Thu, 21 Sept 2023 at 13:11, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Fri, Aug 25, 2023 at 01:26:28PM +0200, Ulf Hansson wrote:
> > > When an CPU's performance domain is managed through the SCMI firmware,
> > > let's enable us describe this as a consumer of a power-domain provider,
> > > which is the de-facto standard to use for performance domains. In this
> > > case, let's specify a corresponding power-domain-name, to point out the
> > > corresponding index for it.
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > > Cc: Conor Dooley <conor+dt@kernel.org>
> > > Cc: devicetree@vger.kernel.org
> > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >
> > > Changes in v3:
> > >       - New patch.
> >
> > This patch and 10/13 are quite generic. I am happy to take it as part of
> > this series but just thought of checking again if that is what you prefer ?
> 
> Yes please, go ahead and pick this up through your scmi tree.
> 

Thanks, I just need Viresh's ack for cpufreq changes, we are otherwise all
set with the series. I will pull once I have his ack.

-- 
Regards,
Sudeep

