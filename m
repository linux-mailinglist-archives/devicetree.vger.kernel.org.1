Return-Path: <devicetree+bounces-144573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 54685A2E7EB
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:37:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADC461889C22
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 09:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4921C5D79;
	Mon, 10 Feb 2025 09:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NNzFx/MX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A8B1C07F6
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739180097; cv=none; b=QDiLaxdWLHYpVAlMIyF2+omalbJfDfUQGyIAjcsje+xfV62EeUg3jszcnfDu3L9osc6q1l3F181KVqreNMjyn2Dm5SuCqzNMWqQcBqE/o91iaftMfYMmQhZqVcYlvAwMQqs9x8nf0HiTClEwZkh5ItQWfUTfemqqGvx4rEcrZBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739180097; c=relaxed/simple;
	bh=uu87I+NyC5qNjyOVfWZ19XkmF2WW/O5nGfQ5JSWUO+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KgDChVNKuuUIOsPHymEWZ3gNP9k8cMc7WLUWYjEY5okwoD3GYktYuHccV5rez0k/MpBfTh+jf156hy1NSSZgf+G3qpGXL3vDjYO6rTJXEk+EwERTyNqn6DEqEyk4gW37lOvNh87Jt6kPiCdy+CGW3Ht+W/gHeljf4/4+Ga90Vwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NNzFx/MX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A96ubX008036
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:34:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	f1EfzxALiu653A9BjbNFnraOmpzooNEi3zJjErDJY+M=; b=NNzFx/MXSXuC3Bxw
	9j2bPkF87BInZLiHjgl1WydaykoaQpoUmdrB/O85U3q7SaWlWzVCxOWXsQ9yMNnS
	2UTiHL7Z1aiSLt7MTPsQe4dn5bQAscVyVZZ6xq+Jqmvw1y6kb2XR2AAbUTE5MQTh
	KdD4n78qVoFT3ol6CWwTMaQK0TkvAT3OBxh7ohNZA6OqmtK4n8s7eK30jGLIprS8
	E838LnI2xkHL/ydj75BHpXEr2Q72a3q35iyvuOOfYzmfVm6HUY9xs3maCzoeSIpY
	0v9DhOOKIYGyDrj7J12dPrk4KaVTOOK/mceKqb5v1Q96yvJs7LiNL9puDBd29b9m
	71GcDQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0guuu4y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:34:52 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2fa6793e8b8so2324025a91.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 01:34:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739180091; x=1739784891;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f1EfzxALiu653A9BjbNFnraOmpzooNEi3zJjErDJY+M=;
        b=DxN5rUbvPhF+QWxjMOJQ+MHs6y9wTo2EqcByu5NG1Et0iFemC5UTUU0x8h/RrYkmj9
         lHpSRwrmVWSyY4dKoMS0OGx9dYlhuvwxO7puDCWMcg5OWcltTtC9R1A/syuE570TyiTn
         O9+TPKh7VGhNPeVFt8xpdyC3VSPDJ59X6GOAF+gSBzzo87sQzs3t/fGbtpU0DacAhaGQ
         1dEO01HVdYSfA5xLVFymlChZEJyWRg0J65MHbjzNF7gfjmyGXeA1cWhi+k0OcAlkDpDS
         EE0C3KzNnvUGoGh+00/uYNcOSLGowzixdL0RT78qaoMCN5/77m8vd1Cleuxyh1ZXOae+
         vRGA==
X-Forwarded-Encrypted: i=1; AJvYcCUdIO9lOJftnN0K4hYBEpESsZt5QStM1mX1ynMQ4A+dt04ZaFy4q0ZT5eHNGBZhEZe4ciweo7y6R/m+@vger.kernel.org
X-Gm-Message-State: AOJu0YwgIH4WIp9pTXk+3JFlQjSV6ik4mAM/k1n3mb30ianS/tel2m9h
	Q27JQBRK4GwuSBn+xWmE3IhiorYfuhdtgbHfxg2dty+Vzis3oq9XsUD08gjKK1fknHPxaV05MdY
	fPUSVlg8FPiEmDG1TDxCjAuw+wkgsGX1Qag+WeXjTaGTCGMODxmN0D/0mu3if
X-Gm-Gg: ASbGncsilB7hyP2AJtGS6fQeo2puWsD/5kFB3u2dqdguZGs8reFRk4RfHCAzUWe+ruU
	wjCYt1+6F0LH7aE2xZP0wSNm+M9QEU2L0ZJLbgkatxHOeBW/DfWd5vHOO+KheEc1GPee4wxC31S
	v4qxw7PZ9y8XoTZJrFGxyZTeNfx+uxMehwNN6RU/U9YHuTTdM/xtCSBNEr1BA6Y7YcqA8UMG0oh
	SRtDBqEhT7hYqs2yM/lTKQ9yeIoo9F4TI1lbzomMvql+I5KmWZfdTjgPUfZnnuF7JVunHtGIquM
	qwlp4o+cQzSgrkhGlnyFbo8GN5PI0Ntckg==
X-Received: by 2002:a17:90a:f94e:b0:2fa:1e3e:9be7 with SMTP id 98e67ed59e1d1-2fa23f5eba4mr18689720a91.5.1739180091166;
        Mon, 10 Feb 2025 01:34:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVHvhmZ/lO3x3ZP/0gjBN7nQ8TlCEiJEmgHt2omax2c/KDwdpjIIB3iL8EOh3c5A5ZLYU/Cw==
X-Received: by 2002:a17:90a:f94e:b0:2fa:1e3e:9be7 with SMTP id 98e67ed59e1d1-2fa23f5eba4mr18689677a91.5.1739180090510;
        Mon, 10 Feb 2025 01:34:50 -0800 (PST)
Received: from [10.92.195.18] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f36896b86sm74213055ad.212.2025.02.10.01.34.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 01:34:50 -0800 (PST)
Message-ID: <5fc8c993-4993-d930-2687-96fdf95dc1cf@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 15:04:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 4/4] PCI: qcom: Enable ECAM feature
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com
References: <20250207-ecam_v4-v4-0-94b5d5ec5017@oss.qualcomm.com>
 <20250207-ecam_v4-v4-4-94b5d5ec5017@oss.qualcomm.com>
 <20250210092240.5b67fsdervb2tvxp@thinkpad>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250210092240.5b67fsdervb2tvxp@thinkpad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Xe6SDVBkuoDtnA7iAq5SZAO1nE1Tk1c2
X-Proofpoint-GUID: Xe6SDVBkuoDtnA7iAq5SZAO1nE1Tk1c2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_04,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100079



On 2/10/2025 2:52 PM, Manivannan Sadhasivam wrote:
> On Fri, Feb 07, 2025 at 04:58:59AM +0530, Krishna Chaitanya Chundru wrote:
>> The ELBI registers falls after the DBI space, PARF_SLV_DBI_ELBI register
>> gives us the offset from which ELBI starts. so use this offset and cfg
>> win to map these regions instead of doing the ioremap again.
>>
>> On root bus, we have only the root port. Any access other than that
>> should not go out of the link and should return all F's. Since the iATU
>> is configured for the buses which starts after root bus, block the
>> transactions starting from function 1 of the root bus to the end of
>> the root bus (i.e from dbi_base + 4kb to dbi_base + 1MB) from going
>> outside the link through ECAM blocker through PARF registers.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 77 ++++++++++++++++++++++++++++++++--
>>   1 file changed, 73 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index e4d3366ead1f..84297b308e7e 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -52,6 +52,7 @@
>>   #define PARF_AXI_MSTR_WR_ADDR_HALT_V2		0x1a8
>>   #define PARF_Q2A_FLUSH				0x1ac
>>   #define PARF_LTSSM				0x1b0
>> +#define PARF_SLV_DBI_ELBI			0x1b4
>>   #define PARF_INT_ALL_STATUS			0x224
>>   #define PARF_INT_ALL_CLEAR			0x228
>>   #define PARF_INT_ALL_MASK			0x22c
>> @@ -61,6 +62,17 @@
>>   #define PARF_DBI_BASE_ADDR_V2_HI		0x354
>>   #define PARF_SLV_ADDR_SPACE_SIZE_V2		0x358
>>   #define PARF_SLV_ADDR_SPACE_SIZE_V2_HI		0x35c
>> +#define PARF_BLOCK_SLV_AXI_WR_BASE		0x360
>> +#define PARF_BLOCK_SLV_AXI_WR_BASE_HI		0x364
>> +#define PARF_BLOCK_SLV_AXI_WR_LIMIT		0x368
>> +#define PARF_BLOCK_SLV_AXI_WR_LIMIT_HI		0x36c
>> +#define PARF_BLOCK_SLV_AXI_RD_BASE		0x370
>> +#define PARF_BLOCK_SLV_AXI_RD_BASE_HI		0x374
>> +#define PARF_BLOCK_SLV_AXI_RD_LIMIT		0x378
>> +#define PARF_BLOCK_SLV_AXI_RD_LIMIT_HI		0x37c
>> +#define PARF_ECAM_BASE				0x380
>> +#define PARF_ECAM_BASE_HI			0x384
>> +
>>   #define PARF_NO_SNOOP_OVERIDE			0x3d4
>>   #define PARF_ATU_BASE_ADDR			0x634
>>   #define PARF_ATU_BASE_ADDR_HI			0x638
>> @@ -84,6 +96,7 @@
>>   
>>   /* PARF_SYS_CTRL register fields */
>>   #define MAC_PHY_POWERDOWN_IN_P2_D_MUX_EN	BIT(29)
>> +#define PCIE_ECAM_BLOCKER_EN			BIT(26)
>>   #define MST_WAKEUP_EN				BIT(13)
>>   #define SLV_WAKEUP_EN				BIT(12)
>>   #define MSTR_ACLK_CGC_DIS			BIT(10)
>> @@ -294,6 +307,44 @@ static void qcom_ep_reset_deassert(struct qcom_pcie *pcie)
>>   	usleep_range(PERST_DELAY_US, PERST_DELAY_US + 500);
>>   }
>>   
>> +static void qcom_pci_config_ecam(struct dw_pcie_rp *pp)
>> +{
>> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>> +	struct qcom_pcie *pcie = to_qcom_pcie(pci);
>> +	u64 addr, addr_end;
>> +	u32 val;
>> +
>> +	/* Set the ECAM base */
>> +	writel_relaxed(lower_32_bits(pci->dbi_phys_addr), pcie->parf + PARF_ECAM_BASE);
>> +	writel_relaxed(upper_32_bits(pci->dbi_phys_addr), pcie->parf + PARF_ECAM_BASE_HI);
>> +
>> +	/*
>> +	 * The only device on root bus is the Root Port. Any access other than that
>> +	 * should not go out of the link and should return all F's. Since the iATU
>> +	 * is configured for the buses which starts after root bus, block the transactions
>> +	 * starting from function 1 of the root bus to the end of the root bus (i.e from
>> +	 * dbi_base + 4kb to dbi_base + 1MB) from going outside the link.
>> +	 */
>> +	addr = pci->dbi_phys_addr + SZ_4K;
>> +	writel_relaxed(lower_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_WR_BASE);
>> +	writel_relaxed(upper_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_WR_BASE_HI);
>> +
>> +	writel_relaxed(lower_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_RD_BASE);
>> +	writel_relaxed(upper_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_RD_BASE_HI);
>> +
>> +	addr_end = pci->dbi_phys_addr + SZ_1M - 1;
>> +
>> +	writel_relaxed(lower_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_WR_LIMIT);
>> +	writel_relaxed(upper_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_WR_LIMIT_HI);
>> +
>> +	writel_relaxed(lower_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_RD_LIMIT);
>> +	writel_relaxed(upper_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_RD_LIMIT_HI);
>> +
>> +	val = readl_relaxed(pcie->parf + PARF_SYS_CTRL);
>> +	val |= PCIE_ECAM_BLOCKER_EN;
>> +	writel_relaxed(val, pcie->parf + PARF_SYS_CTRL);
>> +}
>> +
>>   static int qcom_pcie_start_link(struct dw_pcie *pci)
>>   {
>>   	struct qcom_pcie *pcie = to_qcom_pcie(pci);
>> @@ -303,6 +354,9 @@ static int qcom_pcie_start_link(struct dw_pcie *pci)
>>   		qcom_pcie_common_set_16gt_lane_margining(pci);
>>   	}
>>   
>> +	if (pci->pp.ecam_mode)
>> +		qcom_pci_config_ecam(&pci->pp);
>> +
>>   	/* Enable Link Training state machine */
>>   	if (pcie->cfg->ops->ltssm_enable)
>>   		pcie->cfg->ops->ltssm_enable(pcie);
>> @@ -1233,6 +1287,7 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>   {
>>   	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>>   	struct qcom_pcie *pcie = to_qcom_pcie(pci);
>> +	u16 offset;
>>   	int ret;
>>   
>>   	qcom_ep_reset_assert(pcie);
>> @@ -1241,6 +1296,11 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>   	if (ret)
>>   		return ret;
>>   
>> +	if (pp->ecam_mode) {
>> +		offset = readl(pcie->parf + PARF_SLV_DBI_ELBI);
>> +		pcie->elbi = pci->dbi_base + offset;
>> +	}
> 
> If you use the existing 'elbi' register offset defined in DT, you can just rely
> on the DWC core to call dw_pcie_ecam_supported() as I mentioned in my comment in
> patch 3.
>  >> +
>>   	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
>>   	if (ret)
>>   		goto err_deinit;
>> @@ -1615,6 +1675,13 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>>   	pci->ops = &dw_pcie_ops;
>>   	pp = &pci->pp;
>>   
>> +	pp->bridge = devm_pci_alloc_host_bridge(dev, 0);
>> +	if (!pp->bridge) {
>> +		ret = -ENOMEM;
>> +		goto err_pm_runtime_put;
>> +	}
>> +
> 
> This will also go away.
> 
Hi Mani,

I get your point but the problem is in ECAM mode the DBI address to 
maximum of 256 MB will be ioremap by pci_ecam_create(). If we don't skip
this ioremap of elbi ioremap in pci_ecam_create because we already
iormaped elbi which falls in dbi address to 256 MB region( as we can't
remap same region twice). so we need to skip doing ioremap for elbi
region.

To avoid this issue we are doing this way to figure out ecam can be
enabled or not before doing ioremap of elbi region.

- Krishna Chaitanya.
>> +	pci->pp.ecam_mode = dw_pcie_ecam_supported(pp);
> 
> This too.
> 
> - Mani
> 

