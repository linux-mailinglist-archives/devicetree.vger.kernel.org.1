Return-Path: <devicetree+bounces-7088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F33017BF1E0
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 06:14:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2137E1C20A79
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 04:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 062D7442B;
	Tue, 10 Oct 2023 04:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoYFWcMU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C40441A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:14:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F766C433C7;
	Tue, 10 Oct 2023 04:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696911283;
	bh=nK7hPz0IJ5WPkRbrkIbZW5gH7DqROeAdAMgJ8TphcFs=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=IoYFWcMUn/mvlci13kY86Reyr+glMprQPHpjWivb2LdzguN8Q1L3Xs+IwDM6zK8+k
	 ZnKJtTu0P0VOdQuzdqTiwk0sxvy3yKd/mDqRIl9udcWPAig4BfrL0fhswt6422i5KS
	 t+SWoa9EP3nVbn1jYD2Sk+bANMqLQTjDwstRFqOvzQJ7LwqXXR1lmTJqWaAfF0QUSM
	 EjhFscsopKanPgSJ5IWZp3L4ofYmBhvOXKEOsjTfFPog1ddd8XUEVhZ6F/VtHComBR
	 CnRU2jaNrhg9lAWjZl5iIe2WiMi+AiWaIBccpAL7GQDBtJeFc/9QHyVE1UKNxKr4/U
	 UU4Jc/DKteqfg==
Message-ID: <e56ca638873788477f4f22cb4c716a88.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAA8EJppK6Qm22r0RhFJS6tSc=g-bLxOwDuxLCScRxS0MiZq3sA@mail.gmail.com>
References: <20230827115033.935089-1-dmitry.baryshkov@linaro.org> <20230827115033.935089-6-dmitry.baryshkov@linaro.org> <493aff10d698c9ca5bdbeae45250f5fe.sboyd@kernel.org> <7312633f-3b53-43a1-b6e3-010513c2a1e2@linaro.org> <ZRwQvP_GbvwvLAn8@gerhold.net> <CAA8EJpr9WH+MQdOJQ5yockg9TsUnDcenGbs=dq4Nt0SSBaK=0A@mail.gmail.com> <ZRwia2_imBfRfv7X@gerhold.net> <CAA8EJppK6Qm22r0RhFJS6tSc=g-bLxOwDuxLCScRxS0MiZq3sA@mail.gmail.com>
Subject: Re: [PATCH v4 05/23] interconnect: icc-clk: add support for scaling using OPP
From: Stephen Boyd <sboyd@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>, Ilia Lin <ilia.lin@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Nishanth Menon <nm@ti.com>, Rafael J. Wysocki <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>, Douglas Anderson <dianders@chromium.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Stephan Gerhold <stephan@gerhold.net>
Date: Mon, 09 Oct 2023 21:14:40 -0700
User-Agent: alot/0.10

Quoting Dmitry Baryshkov (2023-10-03 08:31:27)
> On Tue, 3 Oct 2023 at 17:17, Stephan Gerhold <stephan@gerhold.net> wrote:
> >
> > On Tue, Oct 03, 2023 at 04:36:11PM +0300, Dmitry Baryshkov wrote:
> > > On Tue, 3 Oct 2023 at 16:02, Stephan Gerhold <stephan@gerhold.net> wr=
ote:
> > > >
> > > > On Tue, Oct 03, 2023 at 11:30:28AM +0300, Dmitry Baryshkov wrote:
> > > > > On 28/08/2023 21:09, Stephen Boyd wrote:
> > > > > > Quoting Dmitry Baryshkov (2023-08-27 04:50:15)
> > > > > > > diff --git a/drivers/interconnect/icc-clk.c b/drivers/interco=
nnect/icc-clk.c
> > > > > > > index d787f2ea36d9..45ffb068979d 100644
> > > > > > > --- a/drivers/interconnect/icc-clk.c
> > > > > > > +++ b/drivers/interconnect/icc-clk.c
> > > > > > > @@ -25,12 +28,16 @@ struct icc_clk_provider {
> > > > > > >   static int icc_clk_set(struct icc_node *src, struct icc_nod=
e *dst)
> > > > > > >   {
> > > > > > >          struct icc_clk_node *qn =3D src->data;
> > > > > > > +       unsigned long rate =3D icc_units_to_bps(src->peak_bw);
> > > > > > >          int ret;
> > > > > > >          if (!qn || !qn->clk)
> > > > > > >                  return 0;
> > > > > > > -       if (!src->peak_bw) {
> > > > > > > +       if (qn->opp)
> > > > > > > +               return dev_pm_opp_set_rate(qn->dev, rate);
> > > > > >
> > > > > > Just curious how does lockdep do with this? Doesn't OPP call in=
to
> > > > > > interconnect code, so lockdep will complain about ABBA?
> > > > >
> > > > > Unfortunately it does. It seems, the icc-clk is not a proper way =
to go here.
> > > > > I will take a look at reusing set_required_opps for this case.
> > > > >
> > > >
> > > > Could you elaborate a bit which locks exactly cause trouble here?
> > > > I'm probably missing something here.
> > > >
> > > > From a quick look at the OPP code I don't see a global lock taken t=
here
> > > > for the entire OPP switch sequence, so I'm not sure how this could =
cause
> > > > an ABBA deadlock.
> > >
> > > For example:
> > >
> > > [    7.680041] Chain exists of:
> > > [    7.680041]   icc_bw_lock --> regulator_ww_class_acquire --> fs_re=
claim
> > > [    7.680041]
> > > [    7.687955]  Possible unsafe locking scenario:
> > > [    7.687955]
> > > [    7.699039]        CPU0                    CPU1
> > > [    7.704752]        ----                    ----
> > > [    7.709266]   lock(fs_reclaim);
> > > [    7.713779]                                lock(regulator_ww_class=
_acquire);
> > > [    7.716919]                                lock(fs_reclaim);
> > > [    7.724204]   lock(icc_bw_lock);
> > >
> >
> > Hm, I'm not entirely sure how to interpret this. Is there really a
> > connection between OPP and ICC here? It looks more like ICC <->
> > regulator and somehow related to memory allocations (the fs_reclaim).
> >
> > Was there more output around this?
>=20
> [    7.362902] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [    7.363447] WARNING: possible circular locking dependency detected
> [    7.369434] 6.6.0-rc3-next-20230929-08870-g49503b4b9f55 #129 Not taint=
ed
> [    7.375604] ------------------------------------------------------
> [    7.382453] swapper/0/1 is trying to acquire lock:
> [    7.388437] c143445c (icc_bw_lock){+.+.}-{3:3}, at: icc_init+0x0/0x104
> [    7.393225]
> [    7.393225] but task is already holding lock:
> [    7.399730] c1397444 (fs_reclaim){+.+.}-{0:0}, at: icc_init+0x18/0x104
> [    7.405547]
> [    7.405547] which lock already depends on the new lock.
> [    7.405547]
> [    7.412077]
> [    7.412077] the existing dependency chain (in reverse order) is:
> [    7.420310]
> [    7.420310] -> #2 (fs_reclaim){+.+.}-{0:0}:
> [    7.427767]        fs_reclaim_acquire+0x60/0x94
> [    7.433492]        __kmem_cache_alloc_node+0x30/0x2b4
> [    7.437742]        __kmalloc_node_track_caller+0x48/0x244
> [    7.442954]        kstrdup+0x30/0x58
> [    7.448325]        create_regulator+0x70/0x2b8

The regulator core should avoid holding the lock while calling into
kstrdup() and also debugfs file creation APIs.

-Stephen

> [    7.451981]        regulator_resolve_supply+0x3bc/0x7f4
> [    7.456234]        regulator_register+0x9b0/0xb50
> [    7.461352]        devm_regulator_register+0x50/0x8c
> [    7.466216]        rpm_reg_probe+0xf4/0x1a0
> [    7.471244]        platform_probe+0x5c/0xb0
> [    7.475157]        really_probe+0xc8/0x2d8
> [    7.479318]        __driver_probe_device+0x88/0x1a0
> [    7.483488]        driver_probe_device+0x30/0x108
> [    7.488262]        __driver_attach_async_helper+0x4c/0xa0
> [    7.493133]        async_run_entry_fn+0x24/0xb0
> [    7.498504]        process_one_work+0x208/0x5e4
> [    7.502844]        worker_thread+0x1e0/0x4a4
> [    7.507356]        kthread+0x100/0x120
> [    7.511874]        ret_from_fork+0x14/0x28
> [    7.515428]
> [    7.515428] -> #1 (regulator_ww_class_acquire){+.+.}-{0:0}:
> [    7.519528]        lock_release+0x164/0x340
> [    7.526713]        __mutex_unlock_slowpath+0x3c/0x2fc
> [    7.530626]        regulator_lock_dependent+0x1a4/0x298
> [    7.535839]        regulator_set_voltage+0x30/0xfc
> [    7.540866]        krait_l2_set_one_supply+0x28/0x84
> [    7.545729]        krait_l2_config_regulators+0x90/0x1c4
> [    7.550851]        _set_opp+0xf0/0x438
> [    7.556144]        dev_pm_opp_set_rate+0x118/0x224
> [    7.559703]        icc_node_add+0xe8/0x15c
> [    7.564474]        icc_clk_register+0x150/0x208
> [    7.568556]        krait_l2_probe+0x100/0x114
> [    7.572988]        platform_probe+0x5c/0xb0
> [    7.577495]        really_probe+0xc8/0x2d8
> [    7.581487]        __driver_probe_device+0x88/0x1a0
> [    7.585658]        driver_probe_device+0x30/0x108
> [    7.590433]        __device_attach_driver+0x94/0x10c
> [    7.595300]        bus_for_each_drv+0x84/0xd8
> [    7.600326]        __device_attach+0xac/0x1a8
> [    7.604580]        bus_probe_device+0x8c/0x90
> [    7.608919]        device_add+0x5c8/0x7a4
> [    7.613265]        of_platform_device_create_pdata+0x90/0xbc
> [    7.617260]        qcom_cpufreq_init+0xa8/0x130
> [    7.622984]        do_one_initcall+0x68/0x2d8
> [    7.627235]        kernel_init_freeable+0x1ac/0x208
> [    7.631752]        kernel_init+0x18/0x12c
> [    7.636441]        ret_from_fork+0x14/0x28
> [    7.640602]
> [    7.640602] -> #0 (icc_bw_lock){+.+.}-{3:3}:
> [    7.644607]        __lock_acquire+0x1530/0x28fc
> [    7.650413]        lock_acquire+0x10c/0x33c
> [    7.654757]        icc_init+0x40/0x104
> [    7.658917]        do_one_initcall+0x68/0x2d8
> [    7.662740]        kernel_init_freeable+0x1ac/0x208
> [    7.667168]        kernel_init+0x18/0x12c
> [    7.671855]        ret_from_fork+0x14/0x28
> [    7.676018]
> [    7.676018] other info that might help us debug this:
> [    7.676018]
> [    7.680041] Chain exists of:
> [    7.680041]   icc_bw_lock --> regulator_ww_class_acquire --> fs_reclaim
> [    7.680041]
> [    7.687955]  Possible unsafe locking scenario:
> [    7.687955]
> [    7.699039]        CPU0                    CPU1
> [    7.704752]        ----                    ----
> [    7.709266]   lock(fs_reclaim);
> [    7.713779]                                lock(regulator_ww_class_acq=
uire);
> [    7.716919]                                lock(fs_reclaim);
> [    7.724204]   lock(icc_bw_lock);
> [    7.729833]
> [    7.729833]  *** DEADLOCK ***
> [    7.729833]
> [    7.733071] 1 lock held by swapper/0/1:
> [    7.738691]  #0: c1397444 (fs_reclaim){+.+.}-{0:0}, at: icc_init+0x18/=
0x104
> [    7.742528]
> [    7.742528] stack backtrace:
> [    7.749463] CPU: 3 PID: 1 Comm: swapper/0 Not tainted
> 6.6.0-rc3-next-20230929-08870-g49503b4b9f55 #129
> [    7.754010] Hardware name: Generic DT based system
> [    7.763183]  unwind_backtrace from show_stack+0x10/0x14
> [    7.767957]  show_stack from dump_stack_lvl+0x60/0x90
> [    7.773082]  dump_stack_lvl from check_noncircular+0x174/0x18c
> [    7.778288]  check_noncircular from __lock_acquire+0x1530/0x28fc
> [    7.784018]  __lock_acquire from lock_acquire+0x10c/0x33c
> [    7.790178]  lock_acquire from icc_init+0x40/0x104
> [    7.795475]  icc_init from do_one_initcall+0x68/0x2d8
> [    7.800159]  do_one_initcall from kernel_init_freeable+0x1ac/0x208
> [    7.805286]  kernel_init_freeable from kernel_init+0x18/0x12c
> [    7.811361]  kernel_init from ret_from_fork+0x14/0x28
> [    7.817177] Exception stack(0xf081dfb0 to 0xf081dff8)
>

