Return-Path: <devicetree+bounces-5204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC2E7B5978
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:59:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8644F2832EA
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 527081E537;
	Mon,  2 Oct 2023 17:59:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA0CF1D685
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:59:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id DCC8EB4;
	Mon,  2 Oct 2023 10:58:58 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 232E9C15;
	Mon,  2 Oct 2023 10:59:37 -0700 (PDT)
Received: from pluto (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B4E7B3F59C;
	Mon,  2 Oct 2023 10:58:56 -0700 (PDT)
Date: Mon, 2 Oct 2023 18:58:55 +0100
From: Cristian Marussi <cristian.marussi@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>, Brian Masney <bmasney@redhat.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"andersson@kernel.org" <andersson@kernel.org>,
	"konrad.dybcio@linaro.org" <konrad.dybcio@linaro.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH v4 0/4] Add qcom hvc/shmem transport support
Message-ID: <ZRsE3zQI9Z8AfYqG@pluto>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20230911194359.27547-1-quic_nkela@quicinc.com>
 <0efe305e-031b-bdf5-0268-ca1c6d562653@quicinc.com>
 <20230918151552.n3jvw2qqi5tmyfbb@bogus>
 <ZQhysWhFtR68iVMa@brian-x1>
 <20230919085612.gdmpze6c6stvammg@bogus>
 <74725381-bb13-2550-efd3-224e51af49d2@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <74725381-bb13-2550-efd3-224e51af49d2@quicinc.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 02, 2023 at 10:31:27AM -0700, Nikunj Kela wrote:
> 
> On 9/19/2023 1:56 AM, Sudeep Holla wrote:
> > On Mon, Sep 18, 2023 at 11:54:25AM -0400, Brian Masney wrote:
> > > On Mon, Sep 18, 2023 at 04:15:52PM +0100, Sudeep Holla wrote:
> > > > On Mon, Sep 18, 2023 at 08:01:26AM -0700, Nikunj Kela wrote:
> > > > > Gentle Ping!
> > > > > 
> > > > I will take a look at this later this week. That said, I am unable be
> > > > gauge the urgency based on you ping here. You have shown the same urgency
> > > > last time for a feature that I queued promptly just to know that it was
> > > > abandon within couple of days. So I don't want to rush here simply based
> > > > on the number of pings here. I need to understand that it is really that
> > > > important. For now, I am thinking of skipping even v6.7 just to allow
> > > > some time for Qcom to make up its mind and be absolutely sure this is what
> > > > they *really* want this time.
> > > Hi Sudeep,
> > > 
> > > Red Hat is interested in this patch set. Qualcomm is moving one of their
> > > automotive platforms over to use SCMI and this will appear in that
> > > product.
> > > 
> > Thanks Brian, I trust Redhat over Qcom 😄. I will try to review and enable
> > progress later this week. We can try to target next merge window.
> > 
> > --
> > Regards,
> > Sudeep
> Gentle Ping...

Looking at this tomorrow.

Thanks,
Cristian

