Return-Path: <devicetree+bounces-10472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2BB7D1582
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 20:10:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C876AB2143C
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 18:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 149FD21104;
	Fri, 20 Oct 2023 18:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRDohqWW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70112032B;
	Fri, 20 Oct 2023 18:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 246B7C433C7;
	Fri, 20 Oct 2023 18:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697825418;
	bh=huzjkmkK3JHtkojgquf10gotpxcSpKfROn6Vk0s6UKs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bRDohqWWICIqD+Z8T215e+YaaQO0mjoV0/uko24CyEIoiY3zbZU/OOJoyJ+KOjS84
	 pi5kDcXXVRt3EknjnnUqbj1nGrgUqgBPKXfcha7pvQAmMAmei6RI6pMNqK45u22imc
	 HFUy/EG4LLNDNEVmHrOmp9V0eNPamwAKGTDx+6J1AIAhnrHVtZ0IYpZATlvFtbs0O4
	 VaS6wMo8qMF8giuRecyOp/UGQfuAwOWgZm4HJ1vSiD9oObvsoTkQigsC6UbsoRyRAl
	 90sozgQr4kv4ZCymqvTMB1wnmB1kIbcWSQv2ycEwU3zgyxsY/fPX6hrqLBUQneixBp
	 VOF+6tdepMS4A==
Date: Fri, 20 Oct 2023 23:40:08 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	aisheng.dong@nxp.com, bhelgaas@google.com,
	devicetree@vger.kernel.org, festevam@gmail.com, imx@lists.linux.dev,
	jdmason@kudzu.us, kernel@pengutronix.de, kishon@kernel.org,
	kw@linux.com, linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, lorenzo.pieralisi@arm.com,
	lpieralisi@kernel.org, maz@kernel.org, s.hauer@pengutronix.de,
	shawnguo@kernel.org, tglx@linutronix.de
Subject: Re: [PATCH v2 1/5] PCI: endpoint: Add RC-to-EP doorbell support
 using platform MSI controllery
Message-ID: <20231020181008.GF46191@thinkpad>
References: <20230911220920.1817033-1-Frank.Li@nxp.com>
 <20230911220920.1817033-2-Frank.Li@nxp.com>
 <20231017183722.GB137137@thinkpad>
 <ZS7YvWSlkQluPtg3@lizhi-Precision-Tower-5810>
 <20231019150441.GA7254@thinkpad>
 <ZTFSlpnF41BDzyiX@lizhi-Precision-Tower-5810>
 <20231019172347.GC7254@thinkpad>
 <ZTFxSnpqfHtVR1JJ@lizhi-Precision-Tower-5810>
 <20231020171215.GA46191@thinkpad>
 <ZTLAJu64wL17wrPj@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZTLAJu64wL17wrPj@lizhi-Precision-Tower-5810>

On Fri, Oct 20, 2023 at 02:00:06PM -0400, Frank Li wrote:
> On Fri, Oct 20, 2023 at 10:42:15PM +0530, Manivannan Sadhasivam wrote:
> > On Thu, Oct 19, 2023 at 02:11:22PM -0400, Frank Li wrote:
> > > On Thu, Oct 19, 2023 at 10:53:47PM +0530, Manivannan Sadhasivam wrote:
> > > > On Thu, Oct 19, 2023 at 12:00:22PM -0400, Frank Li wrote:
> > > > > On Thu, Oct 19, 2023 at 08:34:41PM +0530, Manivannan Sadhasivam wrote:
> > > > > > On Tue, Oct 17, 2023 at 02:55:57PM -0400, Frank Li wrote:
> > > > > > > On Wed, Oct 18, 2023 at 12:07:22AM +0530, Manivannan Sadhasivam wrote:
> > > > > > > > On Mon, Sep 11, 2023 at 06:09:16PM -0400, Frank Li wrote:
> > > > > > > > > This commit introduces a common method for sending messages from the Root
> > > > > > > > > Complex (RC) to the Endpoint (EP) by utilizing the platform MSI interrupt
> > > > > > > > > controller, such as ARM GIC, as an EP doorbell. Maps the memory assigned
> > > > > > > > > for the BAR region by the PCI host to the message address of the platform
> > > > > > > > > MSI interrupt controller in the PCI EP. As a result, when the PCI RC writes
> > > > > > > > 
> > > > > > > > "Doorbell feature is implemented by mapping the EP's MSI interrupt controller
> > > > > > > > message address to a dedicated BAR in the EPC core. It is the responsibility
> > > > > > > > of the EPF driver to pass the actual message data to be written by the host to
> > > > > > > > the doorbell BAR region through its own logic."
> > > > > > > > 
> > > > > > > > > to the BAR region, it triggers an IRQ at the EP. This implementation serves
> > > > > > > > > as a common method for all endpoint function drivers.
> > > > > > > > > 
> > > > > > > > > However, it currently supports only one EP physical function due to
> > > > > > > > > limitations in ARM MSI/IMS readiness.
> > > > > > > > > 
> > > > > > > > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > > > > > > > ---
> > > > > > > > >  drivers/pci/endpoint/pci-epc-core.c | 192 ++++++++++++++++++++++++++++
> > > > > > > > >  drivers/pci/endpoint/pci-epf-core.c |  44 +++++++
> > > > > > > > >  include/linux/pci-epc.h             |   6 +
> > > > > > > > >  include/linux/pci-epf.h             |   7 +
> > > > > > > > >  4 files changed, 249 insertions(+)
> > > > > > > > > 
> > > > > > > > > diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> > > > > > > > > index 5a4a8b0be6262..d336a99c6a94f 100644
> > > > > > > > > --- a/drivers/pci/endpoint/pci-epc-core.c
> > > > > > > > > +++ b/drivers/pci/endpoint/pci-epc-core.c
> > > > > > > > > @@ -10,6 +10,7 @@
> > > > > > > > >  #include <linux/slab.h>
> > > > > > > > >  #include <linux/module.h>
> > > > > > > > >  
> > > > > > > > > +#include <linux/msi.h>
> > > > > > > > >  #include <linux/pci-epc.h>
> > > > > > > > >  #include <linux/pci-epf.h>
> > > > > > > > >  #include <linux/pci-ep-cfs.h>
> > > > > > > > > @@ -783,6 +784,197 @@ void pci_epc_bme_notify(struct pci_epc *epc)
> > > > > > > > >  }
> > > > > > > > >  EXPORT_SYMBOL_GPL(pci_epc_bme_notify);
> > > > > > > > >  
> > > > > > > > > +/**
> > > > > > > > > + * pci_epc_alloc_doorbell() - alloc an address space to let RC trigger EP side IRQ by write data to
> > > > > > > > > + *			      the space.
> > > > > > > > 
> > > > > > > > "Allocate platform specific doorbell IRQs to be used by the host to trigger
> > > > > > > > doorbells on EP."
> > > > > > > > 
> > > > > > > > > + *
> > > > > > > > > + * @epc: the EPC device that need doorbell address and data from RC.
> > > > > > > > 
> > > > > > > > EPC device for which the doorbell needs to be allocated
> > > > > > > > 
> > > > > > > > > + * @func_no: the physical endpoint function number in the EPC device.
> > > > > > > > > + * @vfunc_no: the virtual endpoint function number in the physical function.
> > > > > > > > > + * @num_msgs: the total number of doorbell messages
> > > > > > > > 
> > > > > > > > s/num_msgs/num_db
> > > > > > > > 
> > > > > > > > > + *
> > > > > > > > > + * Return: 0 success, other is failure
> > > > > > > > > + */
> > > > > > > > > +int pci_epc_alloc_doorbell(struct pci_epc *epc, u8 func_no, u8 vfunc_no, int num_msgs)
> > > > > > > > > +{
> > > > > > > > > +	int ret;
> > > > > > > > > +
> > > > > > > > > +	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> > > > > > > > > +		return -EINVAL;
> > > > > > > > > +
> > > > > > > > > +	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> > > > > > > > > +		return -EINVAL;
> > > > > > > > > +
> > > > > > > > > +	if (!epc->ops->alloc_doorbell)
> > > > > > > > > +		return 0;
> > > > > > > > 
> > > > > > > > You mentioned 0 is a success. So if there is no callback, you want to return
> > > > > > > > success?
> > > > > > > > 
> > > > > > > > > +
> > > > > > > > > +	mutex_lock(&epc->lock);
> > > > > > > > > +	ret = epc->ops->alloc_doorbell(epc, func_no, vfunc_no, num_msgs);
> > > > > > > > 
> > > > > > > > Why can't you just call the generic function here and in other places instead of
> > > > > > > > implementing callbacks? I do not see a necessity for EPC specific callbacks. If
> > > > > > > > there is one, please specify.
> > > > > > > 
> > > > > > > 1. Refer v1 your comments.
> > > > > > > https://lore.kernel.org/imx/20230906145227.GC5930@thinkpad/
> > > > > > 
> > > > > > I do not find where I suggested the callback approach.
> > > > > 
> > > > > 	> > > If that, Each EPF driver need do duplicate work. 
> > > > > 	> > > 
> > > > > 	> > 
> > > > > 	> > Yes, and that's how it should be. EPF core has no job in supplying the of_node.
> > > > > 	> > It is the responsibility of the EPF drivers as they depend on OF for platform
> > > > > 	> > support.
> > > > > 	> 
> > > > > 	> EPF driver still not depend on OF. such pci-epf-test, which was probed by
> > > > > 	> configfs.
> > > > > 	> 
> > > > > 
> > > > > 	Hmm, yeah. Then it should be part of the EPC driver.
> > > > > 
> > > > > 	Sorry for the confusion.
> > > > > 
> > > > > Here, all "EPF" should be "EPC". The key problem is of_node. EPC core have
> > > > > not of_node, EPC core's parent driver (like dwc-ep driver) have of_node. 
> > > > > 
> > > > > pci_epc_generic_alloc_doorbell(dev), dev is probed by platform driver, such
> > > > > as dwc-ep, which have of_node,  EPC core will create child device.
> > > > > 
> > > > > dwc-ep device
> > > > >  |- epc core device
> > > > > 
> > > > > we can direct call pci_epc_generic_alloc_doorbell(epc->parent) here.
> > > > > 
> > > > > I may miss understand what your means. I think you want to dwc-ep
> > > > > (with of_node) handle these alloc functions. 
> > > > > 
> > > > 
> > > > My comment was to have just one function definition. But looking at it again, I
> > > > think it is better to move all the (alloc, free, write_msg) definitions to
> > > > dwc-ep, since the contents of those functions are not EPC core specific.
> > > 
> > > There are still problem. (alloc, free, write_msg) is quite common for all
> > > controller and the system with MSI.
> > > 
> > > If move these into dwc-ep,  cdns or other controller have to duplicate 
> > > these codes.
> > > 
> > > If you think it is not EPC core specific, how about create new help files?
> > > 
> > 
> > Hmm, that sounds good to me. I think the best place would be:
> > drivers/pci/endpoint/pci-ep-msi.c
> 
> How about header file?
> 
> int pci_epc_generic_alloc_doorbell(struct pci_epc *epc, u8 func_no, u8 vfunc_no, int num_msgs);     
> void pci_epc_generic_free_doorbell(struct pci_epc *epc, u8 func_no, u8 vfunc_no);
> 
> Is it in include/linux/pci-epc.h, just 2 lines.
> 

Sorry, I don't understand what you are suggesting. Can you elaborate?

My suggestion was to place the function definitions in
drivers/pci/endpoint/pci-ep-msi.c, create a separate header
include/linux/pci-ep-msi.h and place the declarations there. The EPC drivers
want to use generic MSI support should include this header.

- Mani

> Frank
> > 
> > Reason is, we cannot have this generic code under drivers/pci/controller/ as it
> > is not a standalone PCI controller but a platform MSI controller. So having it
> > under pci/endpoint/ makes much sense to me.
> > 
> > And this is not specific to EPF drivers as well, so we cannot have it under
> > pci/endpoint/functions/.
> > 
> > - Mani
> > 
> > > Frank
> > > 
> > > > 
> > > > In the EPC core, you can still have the callbacks specific to each EPC. This
> > > > also solves your of_node problem.
> > > > 
> > > > - Mani
> > > > 
> > > > > > 
> > > > > > > 2. Maybe some ep controller have built-in doorbell support. Write to some
> > > > > > > address to trigger doorbell irq.
> > > > > > > 
> > > > > > 
> > > > > > We will handle it whenever such EP controllers arrive. Until then, let's keep it
> > > > > > simple.
> > > > > > 
> > > > > > - Mani
> > > > > > 
> > > > > > > Frank
> > > > > > > 
> > > > > > > > 
> > > > > > > > > +	mutex_unlock(&epc->lock);
> > > > > > > > > +
> > > > > > > > > +	return ret;
> > > > > > > > > +}
> > > > > > > > > +EXPORT_SYMBOL_GPL(pci_epc_alloc_doorbell);
> > > > > > > > > +
> > > > > > > > > +/**
> > > > > > > > > + * pci_epc_free_doorbell() - free resource allocated by pci_epc_alloc_doorbell()
> > > > > > > > > + *
> > > > > > > > > + * @epc: the EPC device that need doorbell address and data from RC.
> > > > > > > > 
> > > > > > > > Same as above.
> > > > > > > > 
> > > > > > > > > + * @func_no: the physical endpoint function number in the EPC device.
> > > > > > > > > + * @vfunc_no: the virtual endpoint function number in the physical function.
> > > > > > > > > + *
> > > > > > > > > + * Return: 0 success, other is failure
> > > > > > > > > + */
> > > > > > > > > +void pci_epc_free_doorbell(struct pci_epc *epc, u8 func_no, u8 vfunc_no)
> > > > > > > > > +{
> > > > > > > > > +	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> > > > > > > > > +		return;
> > > > > > > > > +
> > > > > > > > > +	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> > > > > > > > > +		return;
> > > > > > > > > +
> > > > > > > > > +	if (!epc->ops->free_doorbell)
> > > > > > > > > +		return;
> > > > > > > > > +
> > > > > > > > > +	mutex_lock(&epc->lock);
> > > > > > > > > +	epc->ops->free_doorbell(epc, func_no, vfunc_no);
> > > > > > > > 
> > > > > > > > Same as suggested above.
> > > > > > > > 
> > > > > > > > > +	mutex_unlock(&epc->lock);
> > > > > > > > > +}
> > > > > > > > > +EXPORT_SYMBOL_GPL(pci_epc_free_doorbell);
> > > > > > > > > +
> > > > > > > > > +static irqreturn_t pci_epf_generic_doorbell_handler(int irq, void *data)
> > > > > > > > > +{
> > > > > > > > > +	struct pci_epf *epf = data;
> > > > > > > > > +
> > > > > > > > > +	if (epf->event_ops && epf->event_ops->doorbell)
> > > > > > > > > +		epf->event_ops->doorbell(epf, irq - epf->virq_base);
> > > > > > > > 
> > > > > > > > Same as suggested above.
> > > > > > > > 
> > > > > > > > > +
> > > > > > > > > +	return IRQ_HANDLED;
> > > > > > > > > +}
> > > > > > > > > +
> > > > > > > > > +static void pci_epc_generic_write_msi_msg(struct msi_desc *desc, struct msi_msg *msg)
> > > > > > > > > +{
> > > > > > > > > +	struct pci_epc *epc = NULL;
> > > > > > > > > +	struct class_dev_iter iter;
> > > > > > > > > +	struct pci_epf *epf;
> > > > > > > > > +	struct device *dev;
> > > > > > > > > +
> > > > > > > > > +	class_dev_iter_init(&iter, pci_epc_class, NULL, NULL);
> > > > > > > > > +	while ((dev = class_dev_iter_next(&iter))) {
> > > > > > > > > +		if (dev->parent != desc->dev)
> > > > > > > > > +			continue;
> > > > > > > > > +
> > > > > > > > > +		epc = to_pci_epc(dev);
> > > > > > > > > +
> > > > > > > > > +		class_dev_iter_exit(&iter);
> > > > > > > > > +		break;
> > > > > > > > > +	}
> > > > > > > > > +
> > > > > > > > > +	if (!epc)
> > > > > > > > > +		return;
> > > > > > > > > +
> > > > > > > > > +	/* Only support one EPF for doorbell */
> > > > > > > > > +	epf = list_first_entry_or_null(&epc->pci_epf, struct pci_epf, list);
> > > > > > > > > +
> > > > > > > > 
> > > > > > > > No need of this newline
> > > > > > > > 
> > > > > > > > > +	if (!epf)
> > > > > > > > > +		return;
> > > > > > > > > +
> > > > > > > > > +	if (epf->msg && desc->msi_index < epf->num_msgs)
> > > > > > > > > +		epf->msg[desc->msi_index] = *msg;
> > > > > > > > > +}
> > > > > > > > > +
> > > > > > > > > +
> > > > > > > > 
> > > > > > > > Remove extra newline
> > > > > > > > 
> > > > > > > > > +/**
> > > > > > > > > + * pci_epc_generic_alloc_doorbell() - Common help function. Allocate address space from MSI
> > > > > > > > > + *                                    controller
> > > > > > > > > + *
> > > > > > > > > + * @epc: the EPC device that need doorbell address and data from RC.
> > > > > > > > > + * @func_no: the physical endpoint function number in the EPC device.
> > > > > > > > > + * @vfunc_no: the virtual endpoint function number in the physical function.
> > > > > > > > > + * @num_msgs: the total number of doorbell messages
> > > > > > > > > + *
> > > > > > > > 
> > > > > > > > Same comment as for pci_epc_alloc_doorbell()
> > > > > > > > 
> > > > > > > > > + * Remark: use this function only if EPC driver just register one EPC device.
> > > > > > > > > + *
> > > > > > > > > + * Return: 0 success, other is failure
> > > > > > > > > + */
> > > > > > > > > +int pci_epc_generic_alloc_doorbell(struct pci_epc *epc, u8 func_no, u8 vfunc_no, int num_msgs)
> > > > > > > > > +{
> > > > > > > > > +	struct pci_epf *epf;
> > > > > > > > > +	struct device *dev;
> > > > > > > > > +	int virq, last;
> > > > > > > > > +	int ret;
> > > > > > > > > +	int i;
> > > > > > > > > +
> > > > > > > > > +	if (IS_ERR_OR_NULL(epc))
> > > > > > > > > +		return -EINVAL;
> > > > > > > > > +
> > > > > > > > > +	/* Currently only support one func and one vfunc for doorbell */
> > > > > > > > > +	if (func_no || vfunc_no)
> > > > > > > > > +		return -EINVAL;
> > > > > > > > > +
> > > > > > > > > +	epf = list_first_entry_or_null(&epc->pci_epf, struct pci_epf, list);
> > > > > > > > > +	if (!epf)
> > > > > > > > > +		return -EINVAL;
> > > > > > > > > +
> > > > > > > > > +	dev = epc->dev.parent;
> > > > > > > > > +	ret = platform_msi_domain_alloc_irqs(dev, num_msgs, pci_epc_generic_write_msi_msg);
> > > > > > > > > +	if (ret) {
> > > > > > > > > +		dev_err(dev, "Failed to allocate MSI\n");
> > > > > > > > > +		return -ENOMEM;
> > > > > > > > > +	}
> > > > > > > > > +
> > > > > > > > > +	last = -1;
> > > > > > > > > +	for (i = 0; i < num_msgs; i++) {
> > > > > > > > 
> > > > > > > > You should iterate over msi_desc as below:
> > > > > > > > 
> > > > > > > >         msi_lock_descs(dev);
> > > > > > > >         msi_for_each_desc(desc, dev, MSI_DESC_ALL) {
> > > > > > > > 		...
> > > > > > > > 	}
> > > > > > > > 	msi_unlock_descs(dev);
> > > > > > > > 
> > > > > > > > > +		virq = msi_get_virq(dev, i);
> > > > > > > > > +		if (i == 0)
> > > > > > > > > +			epf->virq_base = virq;
> > > > > > > > > +
> > > > > > > > > +		ret = request_irq(virq, pci_epf_generic_doorbell_handler, 0,
> > > > > > > > 
> > > > > > > > 	request_irq(desc->irq, ...)
> > > > > > > > 
> > > > > > > > > +				  kasprintf(GFP_KERNEL, "pci-epc-doorbell%d", i), epf);
> > > > > > > > > +
> > > > > > > > > +		if (ret) {
> > > > > > > > > +			dev_err(dev, "Failed to request doorbell\n");
> > > > > > > > > +			goto err_free_irq;
> > > > > > > > > +		}
> > > > > > > > > +		last = i;
> > > > > > > > > +	}
> > > > > > > > > +
> > > > > > > > > +	return 0;
> > > > > > > > > +
> > > > > > > > > +err_free_irq:
> > > > > > > > > +	for (i = 0; i < last; i++)
> > > > > > > > > +		kfree(free_irq(epf->virq_base + i, epf));
> > > > > > > > > +	platform_msi_domain_free_irqs(dev);
> > > > > > > > > +
> > > > > > > > > +	return -EINVAL;
> > > > > > > > 
> > > > > > > > 	return ret;
> > > > > > > > 
> > > > > > > > > +}
> > > > > > > > > +EXPORT_SYMBOL_GPL(pci_epc_generic_alloc_doorbell);
> > > > > > > > > +
> > > > > > > > 
> > > > > > > > [...]
> > > > > > > > 
> > > > > > > > > diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
> > > > > > > > > index 3f44b6aec4770..485c146a5efe2 100644
> > > > > > > > > --- a/include/linux/pci-epf.h
> > > > > > > > > +++ b/include/linux/pci-epf.h
> > > > > > > > > @@ -79,6 +79,7 @@ struct pci_epc_event_ops {
> > > > > > > > >  	int (*link_up)(struct pci_epf *epf);
> > > > > > > > >  	int (*link_down)(struct pci_epf *epf);
> > > > > > > > >  	int (*bme)(struct pci_epf *epf);
> > > > > > > > > +	int (*doorbell)(struct pci_epf *epf, int index);
> > > > > > > > 
> > > > > > > > kdoc missing.
> > > > > > > > 
> > > > > > > > >  };
> > > > > > > > >  
> > > > > > > > >  /**
> > > > > > > > > @@ -180,6 +181,9 @@ struct pci_epf {
> > > > > > > > >  	unsigned long		vfunction_num_map;
> > > > > > > > >  	struct list_head	pci_vepf;
> > > > > > > > >  	const struct pci_epc_event_ops *event_ops;
> > > > > > > > > +	struct msi_msg *msg;
> > > > > > > > > +	u16 num_msgs;
> > > > > > > > 
> > > > > > > > num_db
> > > > > > > > 
> > > > > > > > You also need to add kdoc for each new member.
> > > > > > > > 
> > > > > > > > - Mani
> > > > > > > > 
> > > > > > > > -- 
> > > > > > > > மணிவண்ணன் சதாசிவம்
> > > > > > 
> > > > > > -- 
> > > > > > மணிவண்ணன் சதாசிவம்
> > > > 
> > > > -- 
> > > > மணிவண்ணன் சதாசிவம்
> > 
> > -- 
> > மணிவண்ணன் சதாசிவம்

-- 
மணிவண்ணன் சதாசிவம்

