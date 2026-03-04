Return-Path: <devicetree+bounces-270942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SITWAnr9p2mlnAAAu9opvQ
	(envelope-from <devicetree+bounces-270942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 10:38:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F13A1FDB9F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 10:38:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C1B130F6CC8
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 09:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 111683988F4;
	Wed,  4 Mar 2026 09:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eKEnwxk0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aarkVNpC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0333398901
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 09:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772616885; cv=none; b=SyULxJ3TBj3EN/2pX4Z8nJyMe6NomiHBBm5PC7t27xZWcDE80tBxonNhAO8nqw2OmnzYCXcwlxhc8wZs64x+PboSHGDmqPrVmjcikLdWigVRw5xSX/BgGvpaIH57ai6YTmxR0radiBFGJ7oeVyyONE/4AiD0Cp8j5C51C+feNKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772616885; c=relaxed/simple;
	bh=XWtG4w+RB2jIlE8XCXYlCTclLv1DMkaQyVrjOrWsDSM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HO8K5giy2UuJqr6sorbrKxWnEArOOH3Gv8LzzXPkzlCl7QSXiglL+CvUeIJZSMocFq4Y6U6NNukppgW6l3ZZ0BYhJWyhJBNs6Qa1Ac5nLfi8V5poGSl/YHL65ShiZrv3hpjVHNByulru5H/BVIT9oxR88EWizJBP4SAmQfJCMcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eKEnwxk0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aarkVNpC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SURc2861188
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 09:34:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eL/MxpDDt/5/2ALudUSxO1nN1iy4vdaNTzKBdYqEsSk=; b=eKEnwxk08ZSuuIb5
	kLnhOzDXKxPW3zLqbJ5i4X54fIBV8ekw6WA+QDZnIeum2m6HgZKdTzX4cPzMLchr
	5neNVC9YrL0B3EGsnHNgfXT05VeYt225ETdM/AVXVP7//SkXB+1NzN8TeDk5RuFC
	27wO/Anxs1VGEBZa4acXnCLLVSO0dORMonWjSO3FqxuXk8a43Wx2H73d1BKdA4cE
	cxQQpibSkWaWAkJiWBDKtr7fW54WyW1SeY84/O6qB+m+jZ3tI0VcQa8JbqlDPGP8
	LB1IrM9dcfY+1udtjPx+AYfb3o7TgoA/Gyl6T/sV5VyaqTfN5LbziEYbwNJlrEhZ
	gV/dBg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp2c9kcu6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 09:34:42 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-359918118ebso7750230a91.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 01:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772616882; x=1773221682; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eL/MxpDDt/5/2ALudUSxO1nN1iy4vdaNTzKBdYqEsSk=;
        b=aarkVNpC7wmODEKE9NZ7FhWY6VkMI3EC2Oj2f2ApWw7rcwQAr9z47F+lX2Zu/h/1Xk
         KrB9SzdwsjNUyLZuW+X9r4oLsTYFo1fIXorkjtcLnRd2KfYEM9RLucn6Bd17mldHOwWr
         47dCAwN5uh7h1T7rm7Y2hhIoxG8+jxa9NgrkxPeezRHEcjeC2J0Vo7bBg7gQXRPjZrm+
         Il9XjVgGrBn5kD/03pujANKp0JKXdCmpAXUsbkpkOjeW6tq6KKJ3jn+z3Va/nvyHFS1m
         Y9N/65G7CiJLzDhJ4ym9oB9TicoIBe2kDwYgS99+9qBjPvTUDtQzVyOpn0wHPDHbqNG4
         ixPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772616882; x=1773221682;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eL/MxpDDt/5/2ALudUSxO1nN1iy4vdaNTzKBdYqEsSk=;
        b=QkzoAmXDiqPN6Oa8FaNO+A70b0M++jYnAbefEkQmYSQzjnisaR1xMj5V7EHEJ69LKf
         mJ3dcC+2uLCdDcqYoGHKN5AHdlemrDybEuMoBp23sU4auVgGH+j1OcEMNXP/NGmvQnGE
         C7kmlpzNBWb67S1hyevkSuiRbKlDGJm/fMKyKZdUi7EcHZbIxrGGCP2Ktktdw+CrJZyz
         NiA08PP3lhpXUVoA2T8ELVK6u2pQ6YyEvRnsmXr2tu6BazOU34tNoCKjZs8tm84Qhlg9
         Wsj7YdhwzmYM8yKfLnX4S3GjgqgOllQN0ZuyTQx243TSGTDE8kOn/iOrB02bn4gFOvx+
         csCg==
X-Forwarded-Encrypted: i=1; AJvYcCXZMNU/bp1s7BKSdLp4ckUTxDHtHDiDQOdhI3OV1VC5lZ1lznbLOIAeiAJ5GlqcoQ9FnrMoR6xIL5Z7@vger.kernel.org
X-Gm-Message-State: AOJu0YxD82eaKBNq0+F/vZ58wXU5il4NEHg+rauOrUS0sN11uIEU38Sf
	dPR8fAFCvaVLm0nIOhaAuLWr8Sac1FzdKSC2xgDzboOoZVO6FRSrj8A2Yz8bi/oDRRwvw5foA8W
	DnaUhcl3TYqADrxKZ2LrUaC4T+FIVCyxjtdO/Cj+7L4nWqtVRCQTAwAW87eVmj5v7
X-Gm-Gg: ATEYQzzAQxsM27XMwGqn5oiXkTsUNpGBhUahyZG6mj5ktj+5TrxAdZmPeZm0D7Z5f2M
	Tuoq0PxZHMQ3JkPcnlSVIsPGK1wSZKJs4BSrE82e1ujkTvjZfUt/mYEnlYjZCjG7YBecPeWFidW
	UCbEkAxGmByXSVCo05L+SGHUrx3VYJ+Yw723KNXX3o/5pOWmHE8ARvnMmhrevhsaAIf9LGIch8O
	QgjMd84ESffQCuJCd9NSiHVag01cWjS3EncAFMZD5Rz6cAk7nxpOAfoc4igDtWbRZeMeH7Gi0ON
	uBa31uLietfeJhvUxh1UjlKmP+4d010ORWoKC8D9hupe/01B9mdAqxTH1R/4benRrZtsGJbrPD7
	cBv93frzB1R5yHTqu6/elXwjEfC0nUqAJWdKaqgzzOSvuyr2Q3XiaHxDl
X-Received: by 2002:a17:90b:5784:b0:359:8cad:bcdc with SMTP id 98e67ed59e1d1-359a69d6372mr1471641a91.10.1772616881621;
        Wed, 04 Mar 2026 01:34:41 -0800 (PST)
X-Received: by 2002:a17:90b:5784:b0:359:8cad:bcdc with SMTP id 98e67ed59e1d1-359a69d6372mr1471607a91.10.1772616881094;
        Wed, 04 Mar 2026 01:34:41 -0800 (PST)
Received: from [10.219.57.109] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359a8d65b31sm500720a91.0.2026.03.04.01.34.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 01:34:40 -0800 (PST)
Message-ID: <ebeb6f4b-4195-4e9f-b211-a8e11a875b7a@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 15:04:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/3] of: factor arguments passed to of_map_id() into a
 struct
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Nipun Gupta <nipun.gupta@amd.com>,
        Nikhil Agarwal
 <nikhil.agarwal@amd.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Juergen Gross <jgross@suse.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Prakash Gupta <prakash.gupta@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, imx@lists.linux.dev,
        xen-devel@lists.xenproject.org, linux-arm-msm@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
References: <20260301-parse_iommu_cells-v9-0-4d1bceecc5e1@oss.qualcomm.com>
 <20260301-parse_iommu_cells-v9-2-4d1bceecc5e1@oss.qualcomm.com>
 <bo5kb53hrzvl6e5mctvnpqluobdgbpq4x3m5ca7mwtfnl53npw@7axqsph2vyqd>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <bo5kb53hrzvl6e5mctvnpqluobdgbpq4x3m5ca7mwtfnl53npw@7axqsph2vyqd>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA3MiBTYWx0ZWRfXzAy8xvj2aG1g
 CEbphsVyhvbPAckzkT1hd9JqR1wAWiX3gk3njMQKdqrkH8Hom3bsTTKf9OKruDWmyXaDvUe9o7a
 B4SFAcNupMYJfbWFjkgBzBPqn0ld1DU8BjnMHIfV9A8gzPbKmZVxmNXuc67RSBqi5Gu8u/5SvRo
 D40SYaKSVsHS/8yxnVk310vHZtHZqCoU2DVNJo5FGbY5grTwJdHqV+cQcO/b62Kiifn9n9xRJzh
 oWYc5DjfJxD7sq1aZNBTOIHeE+w3wY8PB0jz3tx+HvG2BAi+E01j90tdYjChZtJMYuqswFfeuw0
 07n5fYfPaEgkD9SavY7WHGP1yIM7FDn33edDkbpDNB5xi5TfbBZGafhsaUXcjO97S7uTabEbmJx
 T4PzDaSpyfAAuoO94kROIRjK67HQ5dxkYWqFSvpMxejBbXlG7ZUQh/9QbLcEWc5adhlrZdyWM3x
 WvYozEsCYrL8Q1Zu11Q==
X-Proofpoint-ORIG-GUID: tr7W1RyXOUd87OXXLuRgpxJngjQUd8lf
X-Proofpoint-GUID: tr7W1RyXOUd87OXXLuRgpxJngjQUd8lf
X-Authority-Analysis: v=2.4 cv=EefFgfmC c=1 sm=1 tr=0 ts=69a7fcb2 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=kVzFkbBwBCoyR44kgfkA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040072
X-Rspamd-Queue-Id: 9F13A1FDB9F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amd.com,8bytes.org,kernel.org,arm.com,nxp.com,pengutronix.de,google.com,gmail.com,suse.com,epam.com,oss.qualcomm.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.xenproject.org];
	TAGGED_FROM(0.00)[bounces-270942-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/1/2026 4:29 PM, Dmitry Baryshkov wrote:
> On Sun, Mar 01, 2026 at 02:04:20PM +0530, Vijayanand Jitta wrote:
>> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>
>> Change of_map_id() to take a pointer to struct of_phandle_args
>> instead of passing target device node and translated IDs separately.
>> Update all callers accordingly.
>>
>> Subsequent patch will make use of the args_count field in
>> struct of_phandle_args.
>>
>> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
>> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
>> ---
>>  drivers/iommu/of_iommu.c              |  2 +-
>>  drivers/of/base.c                     | 37 +++++++++++++++++------------------
>>  drivers/pci/controller/dwc/pci-imx6.c |  8 +++++++-
>>  drivers/pci/controller/pcie-apple.c   |  4 +++-
>>  drivers/xen/grant-dma-ops.c           |  2 +-
>>  include/linux/of.h                    | 21 +++++++++++++-------
>>  6 files changed, 44 insertions(+), 30 deletions(-)
>>
>> diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
>> index a0937b7b3c4d..e1d4b37d200d 100644
>> --- a/drivers/pci/controller/pcie-apple.c
>> +++ b/drivers/pci/controller/pcie-apple.c
>> @@ -755,6 +755,7 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
>>  {
>>  	u32 sid, rid = pci_dev_id(pdev);
>>  	struct apple_pcie_port *port;
>> +	struct of_phandle_args iommu_spec = { .args_count = 1 };
> 
> Hmm, I didn't notice this. Parsing functions are expected to ignore
> of_phandle_args before the parsing. So passing .args_count = 1 is
> strange.
> 

You're right, This is not required. I'll remove these initializations in next 
series.

Thanks,
Vijay

>>  	int idx, err;
>>  
>>  	port = apple_pcie_get_port(pdev);
> 


