Return-Path: <devicetree+bounces-5904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD507B84AC
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 18:12:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AE22C281510
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2DC11BDCE;
	Wed,  4 Oct 2023 16:11:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FAB1BDC9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 16:11:57 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id E08141703;
	Wed,  4 Oct 2023 09:11:44 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA334C15;
	Wed,  4 Oct 2023 09:12:22 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB2543F762;
	Wed,  4 Oct 2023 09:11:42 -0700 (PDT)
Date: Wed, 4 Oct 2023 17:11:40 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: cristian.marussi@arm.com, robh+dt@kernel.org,
	Sudeep Holla <sudeep.holla@arm.com>,
	Brian Masney <bmasney@redhat.com>,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 1/4] firmware: arm_scmi: Add polling support for
 completion in smc
Message-ID: <20231004161140.uzqb4eapyo6gd7xm@bogus>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20230911194359.27547-1-quic_nkela@quicinc.com>
 <20230911194359.27547-2-quic_nkela@quicinc.com>
 <20231003103317.pjfmf6uisahowmom@bogus>
 <1c58a05b-1337-0287-225f-5a73b4c6828e@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1c58a05b-1337-0287-225f-5a73b4c6828e@quicinc.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 03, 2023 at 08:53:20AM -0700, Nikunj Kela wrote:
> 
> On 10/3/2023 3:33 AM, Sudeep Holla wrote:
> > On Mon, Sep 11, 2023 at 12:43:56PM -0700, Nikunj Kela wrote:
> > > Currently, the return from the smc call assumes the completion of
> > > the scmi request. However this may not be true in virtual platforms
> > > that are using hvc doorbell.
> > > 
> > Hmm, it is expectation from SMCCC for the fast calls. Is you HVC FID
> > not a fast call. AFAIK, only TOS use yielding calls. Are you using them
> > here ? If not, this must complete when the SMC/HVC returns. We added
> > support for platforms indicating the same via interrupt.
> > 
> > I would like to avoid adding this build config. Why does it require polling ?
> > Broken firmware ? I would add a compatible for that. Or if the qcom always
> > wants to do this way, just make it specific to the qcom compatible.
> > 
> > I would avoid a config flag as it needs to be always enabled for single
> > image and affects other platforms as well. So please drop this change.
> > If this is absolutely needed, just add additional property which DT
> > maintainers may not like as it is more like a policy or just make it
> > compatible specific.
> > 
> > --
> > Regards,
> > Sudeep
> We are using Fast call FID. We are using completion IRQ for all the scmi
> instances except one where we need to communicate with the server when GIC
> is in suspended state in HLOS. We will need to poll the channel for
> completion in that use case. I am open to suggestions.

IIUC, for the sake of that one corner case, you have added the polling
Kconfig and will be enabled for all the case and even on other platforms
in a single Image. I think we could be something better, no ?

Please share details on that one corner case.
Is it in the scmi drivers already ? If so, specifics please.
If no, again provide details on how you plan to use. We do have ways
to make a polling call, but haven't mixed it with interrupt based calls
for a reason, but we can revisit if it makes sense.

--
Regards,
Sudeep

