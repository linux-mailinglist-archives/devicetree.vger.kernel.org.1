Return-Path: <devicetree+bounces-316743-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B7skKz4gQmqh0gkAu9opvQ
	(envelope-from <devicetree+bounces-316743-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:35:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A02496D70D1
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:35:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316743-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-316743-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CE18D305AA5F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC513C9892;
	Mon, 29 Jun 2026 07:21:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9BE3C8C72;
	Mon, 29 Jun 2026 07:21:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782717702; cv=none; b=RUhQt3B1DvF+0k1d/aFyAVEdDSgHIRedDmnxTx05VEkh0gN9HHSngJLXfP7F4EG7aUsXdyZbIDc3/xIJRSy4i09YatI1nwDALThKxHvHjBcAcc0K48AGXX3gzhBP8YMrmJtVJkcxZse4Zkrkxp0WB3eRwKeh9SsXF/safa0kQf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782717702; c=relaxed/simple;
	bh=pYOxRjR3efAewFrrG/jNz9lLg8zP6RTv+PjCyJqZDUU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=T314UO9CImxgA1IThRDLzoXYSighNDD9PTTGAuNETsF9KrjonDth2stcrS7o6P8U0poz7akqzf0C9Cy0FiewNJVvkfnG1w1ej0LXoHagI1pfd1sxwqz8ZtKJbCCsQ7nObKBg24Gt6CRlX8yYLQ+FL8hsxXqpq2uOfsEYMxNUfro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC5C31F000E9;
	Mon, 29 Jun 2026 07:21:38 +0000 (UTC)
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v26 5/7] firmware: drivers: imx: adds miscdev
Reply-To: sashiko-reviews@lists.linux.dev
To: pankaj.gupta@oss.nxp.com
Cc: robh@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <20260629-imx-se-if-v26-5-146446285744@nxp.com>
References: <20260629-imx-se-if-v26-0-146446285744@nxp.com>
 <20260629-imx-se-if-v26-5-146446285744@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 07:21:34 +0000
Message-Id: <20260629072138.EC5C31F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316743-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,nxp.com:email,lists.linux.dev:replyto];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pankaj.gupta@oss.nxp.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A02496D70D1

Thank you for your contribution! Sashiko AI review found 13 potential issue=
(s) to consider:

New issues:
- [Critical] The allocated DMA address for the encrypted `imem` buffer is d=
iscarded, causing firmware to corrupt physical address 0x0.
- [High] Command receiver device contexts bypass the response timeout, caus=
ing indefinite hangs on firmware communication.
- [High] `dlink_dev_ctx()` frees the command receiver's `rx_msg` without ho=
lding the required synchronization lock.
- [High] Missing `kref_init()` in `init_device_context()` causes the file c=
ontext to be permanently leaked upon close.
- [High] Unbinding the device or removing the module hangs indefinitely if =
a userspace thread is blocked in `read()`.
- [High] DMA memory is freed when a file descriptor is closed, even if the =
firmware is still actively processing a timed-out transaction using that me=
mory.
- [High] Concurrent ioctls can cause multiple firmware authentications due =
to an unprotected state variable.
- [High] Kernel pointer leakage to userspace due to struct type confusion i=
n `get_se_soc_id()`.
- [High] Early return upon mailbox send failure leaves a dangling pointer i=
n the shared response waiter state, leading to a Use-After-Free in the RX i=
nterrupt handler.
- [High] Invalid use of `dma_to_phys()` on a DMA address returned by `dma_a=
lloc_coherent()`.
- [Medium] UAPI ioctl structures use variable-sized types and pointers, bre=
aking 32-bit userspace compatibility.
- [Medium] Unbounded user-provided size is passed to memdup_user(), allowin=
g potential kernel warnings and memory exhaustion.

Pre-existing issues:
- [High] Misdirected signal handling in `ele_msg_rcv()` corrupts another th=
read's state and traps daemon read threads in an uninterruptible wait.
--

commit 17a7df5c75595fcf60d2885ef3d90c709156c8d3
Author: Pankaj Gupta <pankaj.gupta@nxp.com>
Subject: firmware: drivers: imx: adds miscdev

This commit adds a miscdev character driver for communicating with NXP
secure enclaves (like EdgeLock). It provides ioctls for shared memory
management, command exchange from userspace, and firmware loading lifecycle
management.

> diff --git a/include/uapi/linux/se_ioctl.h b/include/uapi/linux/se_ioctl.h
> --- /dev/null
> +++ b/include/uapi/linux/se_ioctl.h
> @@ -0,0 +1,97 @@
[ ... ]
> +struct se_ioctl_setup_iobuf {
> +	void __user *user_buf;
> +	__u32 length;
> +	__u32 flags;
> +	__u64 ele_addr;
> +};

[Severity: Medium]
Does this struct break 32-bit userspace compatibility on 64-bit kernels?

Using pointer types like void __user * changes the struct size between
architectures. Since the ioctl uses _IOWR which encodes the size, a 32-bit
process will have a mismatched size.

> diff --git a/drivers/firmware/imx/ele_common.c b/drivers/firmware/imx/ele=
_common.c
> --- a/drivers/firmware/imx/ele_common.c
> +++ b/drivers/firmware/imx/ele_common.c
[ ... ]
> +	if (dev_ctx->priv->cmd_receiver_clbk_hdl.dev_ctx !=3D dev_ctx) {
> +		is_rsp_wait_with_timeout =3D true;
> +		timeout_jiffies =3D msecs_to_jiffies(dev_ctx->priv->se_rcv_msg_timeout=
_ms);
> +		deadline_jiffies =3D jiffies + timeout_jiffies;
> +	}
>  	do {
> +		if (is_rsp_wait_with_timeout) {

[Severity: High]
Does this logic correctly identify the wait context?

It disables the timeout based on the file descriptor's identity as a command
receiver rather than the type of wait being performed. If the daemon issues
a synchronous command via SE_IOCTL_CMD_SEND_RCV_RSP, it will use
MAX_SCHEDULE_TIMEOUT and could hang indefinitely if the firmware drops a
response.

[ ... ]
> +		if (ret =3D=3D -ERESTARTSYS) {
[ ... ]
> +			if (dev_ctx->priv->waiting_rsp_clbk_hdl.dev_ctx) {
> +				dev_ctx->priv->waiting_rsp_clbk_hdl.signal_rcvd =3D true;
> +				wait_uninterruptible =3D true;
> +				continue;
> +			}

[Severity: High]
This is a pre-existing issue, but does this signal handling code modify the
wrong thread's state?

When the daemon receives a signal, the hardcoded check against
priv->waiting_rsp_clbk_hdl could corrupt another concurrently waiting
thread's state. Would this force the daemon read thread into an infinite
wait_uninterruptible loop?

> diff --git a/drivers/firmware/imx/se_ctrl.c b/drivers/firmware/imx/se_ctr=
l.c
> --- a/drivers/firmware/imx/se_ctrl.c
> +++ b/drivers/firmware/imx/se_ctrl.c
[ ... ]
> +static u32 get_se_soc_id(struct se_if_priv *priv)
> +{
> +	const struct se_soc_info *se_info =3D device_get_match_data(priv->dev);
> +
> +	return se_info->soc_id;
> +}

[Severity: High]
Does this cause a struct type confusion that leaks kernel pointers to
userspace?

device_get_match_data() returns a pointer to struct se_if_node *, but this
code mistakenly casts it to struct se_soc_info *. Reading se_info->soc_id
will extract bits from the first member of struct se_if_node, which is a
kernel pointer.

These bits are then exposed to userspace by the SE_IOCTL_GET_SOC_INFO ioctl.

[ ... ]
> +static int load_firmware(struct se_if_priv *priv, const u8 *se_img_file_=
to_load)
> +{
[ ... ]
> +	se_fw_buf =3D dma_alloc_coherent(priv->dev, fw->size, &se_fw_dma_addr, =
GFP_KERNEL);
[ ... ]
> +	se_fw_phyaddr =3D dma_to_phys(priv->dev, se_fw_dma_addr);
> +	ret =3D ele_fw_authenticate(priv, se_fw_phyaddr, se_fw_phyaddr);

[Severity: High]
Is it safe to use dma_to_phys() on an address returned by
dma_alloc_coherent()?

dma_alloc_coherent() returns a DMA address (IOVA on systems with an IOMMU),
and dma_to_phys() cannot reverse an IOMMU mapping. This will result in a
garbage physical address being passed to the firmware for authentication.

[ ... ]
> +static int se_load_firmware(struct se_if_priv *priv)
> +{
> +	struct se_fw_load_info *load_fw =3D get_load_fw_instance(priv);
> +	int ret =3D 0;
> +
> +	if (!load_fw->is_fw_tobe_loaded)
> +		return 0;

[Severity: High]
Is the load_fw->is_fw_tobe_loaded initialization state safe from race
conditions?

It is checked and modified here without global locking. Could concurrent
ioctls on different file descriptors bypass the boolean check
simultaneously, leading to duplicate memory allocations and multiple
conflicting firmware authentication commands?

[ ... ]
> +static void cleanup_se_shared_mem(struct se_if_device_ctx *dev_ctx)
> +{
[ ... ]
> +	/* Free non-secure shared buffer. */
> +	dma_free_coherent(priv->dev, MAX_DATA_SIZE_PER_USER,
> +			  se_shared_mem_mgmt->non_secure_mem.ptr,
> +			  se_shared_mem_mgmt->non_secure_mem.dma_addr);

[Severity: High]
If a synchronous command sent via SE_IOCTL_CMD_SEND_RCV_RSP times out, the
background firmware operation is not canceled.

When userspace closes the file descriptor, these coherent DMA buffers are
freed. Will the firmware eventually write its response to the freed address,
causing kernel memory corruption?

[ ... ]
> +static void dlink_dev_ctx(struct se_if_device_ctx *dev_ctx)
> +{
[ ... ]
> +	if (priv->cmd_receiver_clbk_hdl.dev_ctx =3D=3D dev_ctx) {
> +		kfree(priv->cmd_receiver_clbk_hdl.rx_msg);
> +		priv->cmd_receiver_clbk_hdl.rx_msg =3D NULL;
> +		priv->cmd_receiver_clbk_hdl.dev_ctx =3D NULL;
> +	}

[Severity: High]
Can this result in a use-after-free and data race?

This frees the command receiver's rx_msg without acquiring the clbk_rx_lock.
Concurrently, the mailbox interrupt handler se_if_rx_callback() could
acquire the lock, observe a non-null pointer, and copy incoming firmware
data into the freed memory.

[ ... ]
> +static void cleanup_dev_ctx(struct se_if_device_ctx *dev_ctx, bool is_fc=
lose)
> +{
> +	scoped_guard(mutex, &dev_ctx->fops_lock) {

[Severity: High]
Can this cause a deadlock during device unbind or module removal?

If a userspace daemon is blocked indefinitely in read() holding the
dev_ctx->fops_lock, the teardown path unconditionally attempts to acquire t=
he
same fops_lock here and will hang indefinitely.

[ ... ]
> +static int init_device_context(struct se_if_priv *priv, int ch_id,
> +			       struct se_if_device_ctx **new_dev_ctx)
> +{
> +	struct se_if_device_ctx *dev_ctx;
> +	int ret =3D 0;
> +
> +	dev_ctx =3D kzalloc_obj(*dev_ctx, GFP_KERNEL);
[ ... ]
> +	mutex_init(&dev_ctx->fops_lock);
> +	dev_ctx->priv =3D priv;
> +	dev_ctx->cleanup_done =3D false;
> +	INIT_LIST_HEAD(&dev_ctx->link);
> +	*new_dev_ctx =3D dev_ctx;

[Severity: High]
Should this allocation include a call to kref_init(&dev_ctx->refcount)?

Without initialization, the refcount remains at 0. When close() is called,
kref_put() will fail, bypassing the se_if_dev_ctx_release callback and
permanently leaking the file context.

[ ... ]
> +static int se_ioctl_cmd_snd_rcv_rsp_handler(struct se_if_device_ctx *dev=
_ctx,
> +					    void __user *uarg)
> +{
[ ... ]
> +	struct se_api_msg *tx_msg __free(kfree) =3D
> +		memdup_user(cmd_snd_rcv_rsp_info.tx_buf,
> +			    cmd_snd_rcv_rsp_info.tx_buf_sz);

[Severity: Medium]
Is the tx_buf_sz parameter validated against an upper bound before calling
memdup_user()?

If a user process passes an extremely large value, could this lead to a
local denial of service via memory exhaustion or warning spam?

[ ... ]
> +	err =3D ele_msg_send_rcv(dev_ctx, tx_msg, cmd_snd_rcv_rsp_info.tx_buf_s=
z,
> +			       rx_msg, cmd_snd_rcv_rsp_info.rx_buf_sz);

[Severity: High]
If ele_msg_send() fails internally within ele_msg_send_rcv(), does it leave
a dangling pointer?

If ele_msg_send_rcv() returns early on error, it does not reset the shared
priv->waiting_rsp_clbk_hdl.rx_msg pointer to NULL. The caller then frees the
buffer, and a late firmware response handled by se_if_rx_callback() will
trigger a use-after-free when copying into the freed memory.

[ ... ]
> +static ssize_t se_if_fops_write(struct file *fp, const char __user *buf,
> +				size_t size, loff_t *ppos)
> +{
[ ... ]
> +		struct se_api_msg *tx_msg __free(kfree) =3D memdup_user(buf, size);

[Severity: Medium]
Is the size parameter validated against an upper bound before calling
memdup_user() here?

[ ... ]
> +static const struct file_operations se_if_fops =3D {
> +	.open		=3D se_if_fops_open,
> +	.owner		=3D THIS_MODULE,
> +	.release	=3D se_if_fops_close,
> +	.unlocked_ioctl =3D se_ioctl,
> +	.read		=3D se_if_fops_read,
> +	.write		=3D se_if_fops_write,
> +};

[Severity: Medium]
Is a .compat_ioctl handler missing here?

Because the ioctl structures use pointer types, a translation handler is
required to support 32-bit userspace binaries.

[ ... ]
> +static int se_if_probe(struct platform_device *pdev)
> +{
[ ... ]
> +		if (load_fw->se_fw_img_nm->prim_fw_nm_in_rfs) {
> +			/* allocate buffer where SE store encrypted IMEM */
> +			imem_dma_addr =3D phys_to_dma(priv->dev, load_fw->imem.phyaddr);
> +			load_fw->imem.buf =3D dmam_alloc_coherent(priv->dev, ELE_IMEM_SIZE,
> +								&imem_dma_addr, GFP_KERNEL);

[Severity: Critical]
Does this discard the DMA address allocated by dmam_alloc_coherent()?

The function returns the IOVA in the local stack variable imem_dma_addr, but
this address is never saved back to load_fw->imem.phyaddr, leaving it at 0.

The firmware might then be instructed to use physical address 0, destroying
data at page 0. This will also cause the cleanup path to pass 0 to
dmam_free_coherent().

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-imx-se-if-=
v26-0-146446285744@nxp.com?part=3D5

