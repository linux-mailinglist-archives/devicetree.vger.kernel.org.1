Return-Path: <devicetree+bounces-26056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C178156B9
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 04:26:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 168B51F256BF
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 03:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADB421C32;
	Sat, 16 Dec 2023 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="QZxXBc54"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m17229.xmail.ntesmail.com (mail-m17229.xmail.ntesmail.com [45.195.17.229])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A08E1868;
	Sat, 16 Dec 2023 03:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
DKIM-Signature: a=rsa-sha256;
	b=QZxXBc540RY+a+UDHbdH2yIMvadsZXqt08LLuO5aXZa7wRhSpKcVxghD/+K96xzSwch0ZckiAWDpRTUhAasZDVC57d8E6qfDbTode+N0DJD6XxB2BSVow6RnWJTK4kec5z8Pqotf+RIGq6KjJblCHjzv8oNZlTGfBXo8iXXfzNM=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Vf9Y7dM04l+jGCG6PHZl5AcMMTcZ69rWp9HA2foOBq0=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 14681780565;
	Sat, 16 Dec 2023 11:17:29 +0800 (CST)
Message-ID: <c1a92cb7-f740-4a75-8dd7-a79b55021b28@rock-chips.com>
Date: Sat, 16 Dec 2023 11:17:28 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v5,02/16] Revert "drm/rockchip: vop2: Use regcache_sync() to fix
 suspend/resume"
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>, Andy Yan <andyshrk@163.com>,
 heiko@sntech.de, broonie@kernel.org
Cc: devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 chris.obbard@collabora.com, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 sebastian.reichel@collabora.com
References: <20231211115719.1784834-1-andyshrk@163.com>
 <CGME20231214121339eucas1p105b5903b7a5f1933aa2c88c2cfd13288@eucas1p1.samsung.com>
 <98a9f15d-30ac-47bf-9b93-3aa2c9900f7b@samsung.com>
 <dea2b3a8-93f0-45fa-9022-0e2e8eb3ff68@rock-chips.com>
 <68971618-83c0-44ec-a694-84e3511351fe@rock-chips.com>
In-Reply-To: <68971618-83c0-44ec-a694-84e3511351fe@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx5LTFZCS0sdSRlNTx9LSh5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c70a102d7b24fkuuu14681780565
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBg6KBw*Kzw4NzU2LT45NBIJ
	Vh5PC1FVSlVKTEtJTUJNTU5LSk5JVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSU9LSko3Bg++

+ Mark
Hi Marek andy Mark:

On 12/15/23 16:33, Andy Yan wrote:
> Hi Marek:
> 
> On 12/15/23 08:59, Andy Yan wrote:
>> Hi Marek:
>>
>>    Sorry for this issue.
>>    I also tested this series on RK3568/6 before I send them out.
>> But I didn't find anyahing unusal, would you please share the
>> linux kernel defconfig you used for this test and it would be
>> greatly appreciated if you can share more test detial.
> 
> 
> I can reproduce this warning when enable CONFIG_LOCKDEP, I will try
> to fix it asap.
> 
> Thanks.
>>
>> On 12/14/23 20:13, Marek Szyprowski wrote:
>>> Dear All,
>>>
>>> On 11.12.2023 12:57, Andy Yan wrote:
>>>> From: Andy Yan <andy.yan@rock-chips.com>
>>>>
>>>> This reverts commit b63a553e8f5aa6574eeb535a551817a93c426d8c.
>>>>
>>>> regcache_sync will try to reload the configuration in regcache to
>>>> hardware, but the registers of 4 Cluster windows and Esmart1/2/3 on
>>>> the upcoming rk3588 can not be set successfully before internal PD
>>>> power on.
>>>>
>>>> Also it's better to keep the hardware register as it is before we really
>>>> enable it.
>>>>
>>>> So let's revert this version, and keep the first version:
>>>> commit afa965a45e01 ("drm/rockchip: vop2: fix suspend/resume")
>>>>
>>>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>>>> Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>
>>> This patch landed in today's linux-next as commit 81a06f1d02e5 ("Revert
>>> "drm/rockchip: vop2: Use regcache_sync() to fix suspend/resume"").
>>> Unfortunately it triggers a following lock dep warning on my Odroid-M1
>>> test board:
>>>
>>> ========================================================
>>> WARNING: possible irq lock inversion dependency detected
>>> 6.7.0-rc3+ #14328 Not tainted
>>> --------------------------------------------------------
>>> swapper/0/0 just changed the state of lock:
>>> ffff0001f3ae2c18
>>> (rockchip_drm_vop2:2723:(&vop2_regmap_config)->lock){-...}-{2:2}, at:
>>> regmap_lock_spinlock+0x18/0x2c
>>> but this lock took another, HARDIRQ-unsafe lock in the past:
>>>    (&mt->ma_lock){+.+.}-{2:2}
>>>
>>>
>>> and interrupts could create inverse lock ordering between them.
>>>
>>>
>>> other info that might help us debug this:
>>>    Possible interrupt unsafe locking scenario:
>>>
>>>          CPU0                    CPU1
>>>          ----                    ----
>>>     lock(&mt->ma_lock);
>>>                                  local_irq_disable();
>>> lock(rockchip_drm_vop2:2723:(&vop2_regmap_config)->lock);
>>>                                  lock(&mt->ma_lock);
>>>     <Interrupt>
>>> lock(rockchip_drm_vop2:2723:(&vop2_regmap_config)->lock);
>>>
>>>    *** DEADLOCK ***
>>>
>>> no locks held by swapper/0/0.
>>>
>>> the shortest dependencies between 2nd lock and 1st lock:
>>>    -> (&mt->ma_lock){+.+.}-{2:2} {
>>>       HARDIRQ-ON-W at:
>>>                         lock_acquire+0x1e8/0x318
>>>                         _raw_spin_lock+0x48/0x60
>>>                         regcache_maple_exit+0x5c/0xc0
>>>                         regcache_exit+0x48/0x74
>>>                         regmap_reinit_cache+0x1c/0xc4
>>>                         vop2_crtc_atomic_enable+0x86c/0xa0c [rockchipdrm]
>>> drm_atomic_helper_commit_modeset_enables+0xb4/0x26c
>>>                         drm_atomic_helper_commit_tail_rpm+0x50/0xa0
>>>                         commit_tail+0xa4/0x18c
>>>                         drm_atomic_helper_commit+0x19c/0x1b0
>>>                         drm_atomic_commit+0xa8/0xe0
>>>                         drm_client_modeset_commit_atomic+0x22c/0x298
>>>                         drm_client_modeset_commit_locked+0x60/0x1c0
>>>                         drm_client_modeset_commit+0x30/0x58
>>> __drm_fb_helper_restore_fbdev_mode_unlocked+0xbc/0xfc
>>>                         drm_fb_helper_set_par+0x30/0x4c
>>>                         fbcon_init+0x234/0x4c0
>>>                         visual_init+0xb0/0x108
>>>                         do_bind_con_driver.isra.0+0x19c/0x394
>>>                         do_take_over_console+0x144/0x1f0
>>>                         do_fbcon_takeover+0x6c/0xe4
>>>                         fbcon_fb_registered+0x1e0/0x1e8
>>>                         register_framebuffer+0x19c/0x228
>>> __drm_fb_helper_initial_config_and_unlock+0x348/0x4fc
>>> drm_fb_helper_hotplug_event.part.0+0xf0/0x110
>>>                         drm_fb_helper_hotplug_event+0x38/0x44
>>>                         drm_fbdev_generic_client_hotplug+0x28/0xd4
>>>                         drm_client_dev_hotplug+0xcc/0x130
>>>                         output_poll_execute+0x204/0x23c
>>>                         process_one_work+0x1ec/0x53c
>>>                         worker_thread+0x298/0x408
>>>                         kthread+0x124/0x128
>>>                         ret_from_fork+0x10/0x20
>>>       SOFTIRQ-ON-W at:
>>>                         lock_acquire+0x1e8/0x318
>>>                         _raw_spin_lock+0x48/0x60
>>>                         regcache_maple_exit+0x5c/0xc0
>>>                         regcache_exit+0x48/0x74
>>>                         regmap_reinit_cache+0x1c/0xc4
>>>                         vop2_crtc_atomic_enable+0x86c/0xa0c [rockchipdrm]
>>> drm_atomic_helper_commit_modeset_enables+0xb4/0x26c
>>>                         drm_atomic_helper_commit_tail_rpm+0x50/0xa0
>>>                         commit_tail+0xa4/0x18c
>>>                         drm_atomic_helper_commit+0x19c/0x1b0
>>>                         drm_atomic_commit+0xa8/0xe0
>>>                         drm_client_modeset_commit_atomic+0x22c/0x298
>>>                         drm_client_modeset_commit_locked+0x60/0x1c0
>>>                         drm_client_modeset_commit+0x30/0x58
>>> __drm_fb_helper_restore_fbdev_mode_unlocked+0xbc/0xfc
>>>                         drm_fb_helper_set_par+0x30/0x4c
>>>                         fbcon_init+0x234/0x4c0
>>>                         visual_init+0xb0/0x108
>>>                         do_bind_con_driver.isra.0+0x19c/0x394
>>>                         do_take_over_console+0x144/0x1f0
>>>                         do_fbcon_takeover+0x6c/0xe4
>>>                         fbcon_fb_registered+0x1e0/0x1e8
>>>                         register_framebuffer+0x19c/0x228
>>> __drm_fb_helper_initial_config_and_unlock+0x348/0x4fc
>>> drm_fb_helper_hotplug_event.part.0+0xf0/0x110
>>>                         drm_fb_helper_hotplug_event+0x38/0x44
>>>                         drm_fbdev_generic_client_hotplug+0x28/0xd4
>>>                         drm_client_dev_hotplug+0xcc/0x130
>>>                         output_poll_execute+0x204/0x23c
>>>                         process_one_work+0x1ec/0x53c
>>>                         worker_thread+0x298/0x408
>>>                         kthread+0x124/0x128
>>>                         ret_from_fork+0x10/0x20
>>>       INITIAL USE at:
>>>                        lock_acquire+0x1e8/0x318
>>>                        _raw_spin_lock+0x48/0x60
>>>                        regcache_maple_exit+0x5c/0xc0
>>>                        regcache_exit+0x48/0x74
>>>                        regmap_reinit_cache+0x1c/0xc4
>>>                        vop2_crtc_atomic_enable+0x86c/0xa0c [rockchipdrm]
>>> drm_atomic_helper_commit_modeset_enables+0xb4/0x26c
>>>                        drm_atomic_helper_commit_tail_rpm+0x50/0xa0
>>>                        commit_tail+0xa4/0x18c
>>>                        drm_atomic_helper_commit+0x19c/0x1b0
>>>                        drm_atomic_commit+0xa8/0xe0
>>>                        drm_client_modeset_commit_atomic+0x22c/0x298
>>>                        drm_client_modeset_commit_locked+0x60/0x1c0
>>>                        drm_client_modeset_commit+0x30/0x58
>>> __drm_fb_helper_restore_fbdev_mode_unlocked+0xbc/0xfc
>>>                        drm_fb_helper_set_par+0x30/0x4c
>>>                        fbcon_init+0x234/0x4c0
>>>                        visual_init+0xb0/0x108
>>>                        do_bind_con_driver.isra.0+0x19c/0x394
>>>                        do_take_over_console+0x144/0x1f0
>>>                        do_fbcon_takeover+0x6c/0xe4
>>>                        fbcon_fb_registered+0x1e0/0x1e8
>>>                        register_framebuffer+0x19c/0x228
>>> __drm_fb_helper_initial_config_and_unlock+0x348/0x4fc
>>>                        drm_fb_helper_hotplug_event.part.0+0xf0/0x110
>>>                        drm_fb_helper_hotplug_event+0x38/0x44
>>>                        drm_fbdev_generic_client_hotplug+0x28/0xd4
>>>                        drm_client_dev_hotplug+0xcc/0x130
>>>                        output_poll_execute+0x204/0x23c
>>>                        process_one_work+0x1ec/0x53c
>>>                        worker_thread+0x298/0x408
>>>                        kthread+0x124/0x128
>>>                        ret_from_fork+0x10/0x20
>>>     }
>>>     ... key      at: [<ffff800083de53b0>] __key.0+0x0/0x10
>>>     ... acquired at:
>>>      _raw_spin_lock+0x48/0x60
>>>      regcache_maple_write+0x1d8/0x31c
>>>      regcache_write+0x6c/0x84
>>>      _regmap_read+0x1b4/0x1f4
>>>      _regmap_update_bits+0xec/0x134
>>>      regmap_field_update_bits_base+0x6c/0xa0
>>>      vop2_plane_atomic_update+0x380/0x11d0 [rockchipdrm]
>>>      drm_atomic_helper_commit_planes+0xec/0x2a0
>>>      drm_atomic_helper_commit_tail_rpm+0x60/0xa0
>>>      commit_tail+0xa4/0x18c
>>>      drm_atomic_helper_commit+0x19c/0x1b0
>>>      drm_atomic_commit+0xa8/0xe0
>>>      drm_client_modeset_commit_atomic+0x22c/0x298
>>>      drm_client_modeset_commit_locked+0x60/0x1c0
>>>      drm_client_modeset_commit+0x30/0x58
>>>      __drm_fb_helper_restore_fbdev_mode_unlocked+0xbc/0xfc
>>>      drm_fb_helper_set_par+0x30/0x4c
>>>      fbcon_init+0x234/0x4c0
>>>      visual_init+0xb0/0x108
>>>      do_bind_con_driver.isra.0+0x19c/0x394
>>>      do_take_over_console+0x144/0x1f0
>>>      do_fbcon_takeover+0x6c/0xe4
>>>      fbcon_fb_registered+0x1e0/0x1e8
>>>      register_framebuffer+0x19c/0x228
>>>      __drm_fb_helper_initial_config_and_unlock+0x348/0x4fc
>>>      drm_fb_helper_hotplug_event.part.0+0xf0/0x110
>>>      drm_fb_helper_hotplug_event+0x38/0x44
>>>      drm_fbdev_generic_client_hotplug+0x28/0xd4
>>>      drm_client_dev_hotplug+0xcc/0x130
>>>      output_poll_execute+0x204/0x23c
>>>      process_one_work+0x1ec/0x53c
>>>      worker_thread+0x298/0x408
>>>      kthread+0x124/0x128
>>>      ret_from_fork+0x10/0x20
>>>
>>> -> (rockchip_drm_vop2:2723:(&vop2_regmap_config)->lock){-...}-{2:2} {
>>>      IN-HARDIRQ-W at:
>>>                       lock_acquire+0x1e8/0x318
>>>                       _raw_spin_lock_irqsave+0x60/0x88
>>>                       regmap_lock_spinlock+0x18/0x2c
>>>                       regmap_read+0x3c/0x78
>>>                       vop2_isr+0x84/0x2a4 [rockchipdrm]
>>>                       __handle_irq_event_percpu+0xb0/0x2d4
>>>                       handle_irq_event+0x4c/0xb8
>>>                       handle_fasteoi_irq+0xa4/0x1cc
>>>                       generic_handle_domain_irq+0x2c/0x44
>>>                       gic_handle_irq+0x4c/0x110
>>>                       call_on_irq_stack+0x24/0x4c
>>>                       do_interrupt_handler+0x80/0x84
>>>                       el1_interrupt+0x34/0x64
>>>                       el1h_64_irq_handler+0x18/0x24
>>>                       el1h_64_irq+0x64/0x68
>>>                       default_idle_call+0x9c/0x150
>>>                       do_idle+0x230/0x294
>>>                       cpu_startup_entry+0x34/0x3c
>>>                       rest_init+0x100/0x190
>>>                       arch_post_acpi_subsys_init+0x0/0x8
>>>                       start_kernel+0x594/0x684
>>>                       __primary_switched+0xbc/0xc4
>>>      INITIAL USE at:
>>>                      lock_acquire+0x1e8/0x318
>>>                      _raw_spin_lock_irqsave+0x60/0x88
>>>                      regmap_lock_spinlock+0x18/0x2c
>>>                      regmap_write+0x3c/0x78
>>>                      vop2_crtc_atomic_enable+0x894/0xa0c [rockchipdrm]
>>> drm_atomic_helper_commit_modeset_enables+0xb4/0x26c
>>>                      drm_atomic_helper_commit_tail_rpm+0x50/0xa0
>>>                      commit_tail+0xa4/0x18c
>>>                      drm_atomic_helper_commit+0x19c/0x1b0
>>>                      drm_atomic_commit+0xa8/0xe0
>>>                      drm_client_modeset_commit_atomic+0x22c/0x298
>>>                      drm_client_modeset_commit_locked+0x60/0x1c0
>>>                      drm_client_modeset_commit+0x30/0x58
>>> __drm_fb_helper_restore_fbdev_mode_unlocked+0xbc/0xfc
>>>                      drm_fb_helper_set_par+0x30/0x4c
>>>                      fbcon_init+0x234/0x4c0
>>>                      visual_init+0xb0/0x108
>>>                      do_bind_con_driver.isra.0+0x19c/0x394
>>>                      do_take_over_console+0x144/0x1f0
>>>                      do_fbcon_takeover+0x6c/0xe4
>>>                      fbcon_fb_registered+0x1e0/0x1e8
>>>                      register_framebuffer+0x19c/0x228
>>> __drm_fb_helper_initial_config_and_unlock+0x348/0x4fc
>>>                      drm_fb_helper_hotplug_event.part.0+0xf0/0x110
>>>                      drm_fb_helper_hotplug_event+0x38/0x44
>>>                      drm_fbdev_generic_client_hotplug+0x28/0xd4
>>>                      drm_client_dev_hotplug+0xcc/0x130
>>>                      output_poll_execute+0x204/0x23c
>>>                      process_one_work+0x1ec/0x53c
>>>                      worker_thread+0x298/0x408
>>>                      kthread+0x124/0x128
>>>                      ret_from_fork+0x10/0x20
>>>    }
>>>    ... key      at: [<ffff80007c090a18>] _key.6+0x0/0xffffffffffffd5e8
>>> [rockchipdrm]
>>>    ... acquired at:
>>>      __lock_acquire+0xad8/0x20c4
>>>      lock_acquire+0x1e8/0x318
>>>      _raw_spin_lock_irqsave+0x60/0x88
>>>      regmap_lock_spinlock+0x18/0x2c
>>>      regmap_read+0x3c/0x78
>>>      vop2_isr+0x84/0x2a4 [rockchipdrm]
>>>      __handle_irq_event_percpu+0xb0/0x2d4
>>>      handle_irq_event+0x4c/0xb8
>>>      handle_fasteoi_irq+0xa4/0x1cc
>>>      generic_handle_domain_irq+0x2c/0x44
>>>      gic_handle_irq+0x4c/0x110
>>>      call_on_irq_stack+0x24/0x4c
>>>      do_interrupt_handler+0x80/0x84
>>>      el1_interrupt+0x34/0x64
>>>      el1h_64_irq_handler+0x18/0x24
>>>      el1h_64_irq+0x64/0x68
>>>      default_idle_call+0x9c/0x150
>>>      do_idle+0x230/0x294
>>>      cpu_startup_entry+0x34/0x3c
>>>      rest_init+0x100/0x190
>>>      arch_post_acpi_subsys_init+0x0/0x8
>>>      start_kernel+0x594/0x684
>>>      __primary_switched+0xbc/0xc4
>>>
>>>
>>> stack backtrace:
>>> CPU: 0 PID: 0 Comm: swapper/0 Not tainted 6.7.0-rc3+ #14328
>>> Hardware name: Hardkernel ODROID-M1 (DT)
>>> Call trace:
>>>    dump_backtrace+0x98/0xf0
>>>    show_stack+0x18/0x24
>>>    dump_stack_lvl+0x60/0xac
>>>    dump_stack+0x18/0x24
>>>    print_irq_inversion_bug.part.0+0x1ec/0x27c
>>>    mark_lock+0x634/0x950
>>>    __lock_acquire+0xad8/0x20c4
>>>    lock_acquire+0x1e8/0x318
>>>    _raw_spin_lock_irqsave+0x60/0x88
>>>    regmap_lock_spinlock+0x18/0x2c
>>>    regmap_read+0x3c/0x78
>>>    vop2_isr+0x84/0x2a4 [rockchipdrm]
>>>    __handle_irq_event_percpu+0xb0/0x2d4
>>>    handle_irq_event+0x4c/0xb8
>>>    handle_fasteoi_irq+0xa4/0x1cc
>>>    generic_handle_domain_irq+0x2c/0x44
>>>    gic_handle_irq+0x4c/0x110
>>>    call_on_irq_stack+0x24/0x4c
>>>    do_interrupt_handler+0x80/0x84
>>>    el1_interrupt+0x34/0x64
>>>    el1h_64_irq_handler+0x18/0x24
>>>    el1h_64_irq+0x64/0x68
>>>    default_idle_call+0x9c/0x150
>>>    do_idle+0x230/0x294
>>>    cpu_startup_entry+0x34/0x3c
>>>    rest_init+0x100/0x190
>>>    arch_post_acpi_subsys_init+0x0/0x8
>>>    start_kernel+0x594/0x684
>>>    __primary_switched+0xbc/0xc4
>>> Console: switching to colour frame buffer device 240x67
>>> rockchip-drm display-subsystem: [drm] fb0: rockchipdrmfb frame buffer device
>>>
>>>
>>> Reverting it on top of next-20231214 and resolving a conflict
>>> fixes/hides the above lock dep issue.
>>>
>>>

I still dig what is going on here, but I also found that if I change the regmap cache_type
back to REGCACHE_MAPLE(which means revert Mark's patch[0]), this warning is gone.

As I am not familiar with regmap and lockdep, I'm not sure if this wanring is caused by my improper
use of regmap_reinit_cache.

I will continue do more dig, any light on this would be greatly appreciated.


[0]https://patchwork.kernel.org/project/linux-arm-kernel/patch/20231001-drm-rockchip-maple-v1-1-ca396ab75be7@kernel.org/

>>>> ---
>>>>
>>>> (no changes since v1)
>>>>
>>>>    drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 10 +++++++---
>>>>    1 file changed, 7 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>>> index 312da5783362..57784d0a22a6 100644
>>>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>>> @@ -217,6 +217,8 @@ struct vop2 {
>>>>        struct vop2_win win[];
>>>>    };
>>>> +static const struct regmap_config vop2_regmap_config;
>>>> +
>>>>    static struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crtc)
>>>>    {
>>>>        return container_of(crtc, struct vop2_video_port, crtc);
>>>> @@ -883,7 +885,11 @@ static void vop2_enable(struct vop2 *vop2)
>>>>            return;
>>>>        }
>>>> -    regcache_sync(vop2->map);
>>>> +    ret = regmap_reinit_cache(vop2->map, &vop2_regmap_config);
>>>> +    if (ret) {
>>>> +        drm_err(vop2->drm, "failed to reinit cache: %d\n", ret);
>>>> +        return;
>>>> +    }
>>>>        if (vop2->data->soc_id == 3566)
>>>>            vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
>>>> @@ -913,8 +919,6 @@ static void vop2_disable(struct vop2 *vop2)
>>>>        pm_runtime_put_sync(vop2->dev);
>>>> -    regcache_mark_dirty(vop2->map);
>>>> -
>>>>        clk_disable_unprepare(vop2->aclk);
>>>>        clk_disable_unprepare(vop2->hclk);
>>>>    }
>>>
>>> Best regards

