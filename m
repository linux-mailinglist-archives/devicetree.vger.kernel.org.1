Return-Path: <devicetree+bounces-245476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E036BCB15C1
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 23:53:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0AE0330B6E9E
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 22:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 561AA2DCF47;
	Tue,  9 Dec 2025 22:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N0qlGT2E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SDNVWeCn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03AB2D6E6C
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 22:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765320757; cv=none; b=BNnOLUtwGFXfpfUiYpFDVCIKZ679mvnRLGHe2ET6HpLSCXbj2RU7RfmQylzXwJTtqGU5vXXowx5iXAEZMWIpagZvOvl2Zjmd9c05dGhKwhujtUCooj4r7rbAa/3rSq2IyuYyZXxgStS75xK5/bq8I1YIsPKWJ4vpEiR0zncDIK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765320757; c=relaxed/simple;
	bh=y5CcGvaFk55evFK/bk1JgiTHoZb0VTEQSA8k23TaLv0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ag6xT/v06tmBAxEiC1N6e0KyDFNM6KCCs1RfGMd9edw6Po8dEdx2ysa+b4aRWmZ/c8mM9HhyFtCgH/ksVcXwrzH+rd2NQ6MCPitEfrK/nFp/ASaJ+6/jL2S7o9IvEwe+QNGoILTyYzDbHiKkEwUF9QG8+5fJOkmaQG42ZCutwV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N0qlGT2E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SDNVWeCn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9MlZtC837543
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 22:52:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vw3eepaFtTiYpjknw5gqkL1uvwE3sqy8AP9FrVBEBIs=; b=N0qlGT2ElsSQrTSp
	KvYlpQH+k+LQGHJRPSF3Q/GE57gYGSBjuxfI6laNj+rcMyeroUqZUC5ZrwxsGJw0
	1EmQxh4Px8oUBaJnnYA4KiuFWHajusAmk2O/hr9NhM68WbCf/qOK4ScQDkDbz3k2
	Ao1OmStcd5JA6QDHyEPhcFNpBGicOeQkm2Jzomaf0mGXIwUCrMljp0DDgbGcSNtt
	q3kDcNL3RaD3PhIA3Cbv7mhosXnYwXTKFW0PCjQD2R8d3UYbAeC4Hwv/IVlitDPw
	VcSRuoPtOX6Yod4Md/YPA4V4W7JbBkFBcSnXYAXWOq1CpbFEpM6G88LO5FwOShIg
	Pa5xOQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axrhm8t78-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 22:52:33 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f183e4cc7bso58631171cf.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 14:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765320753; x=1765925553; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vw3eepaFtTiYpjknw5gqkL1uvwE3sqy8AP9FrVBEBIs=;
        b=SDNVWeCnGzzRQoPkKr6SHaJrLpsZW4OCch2IslvpS4/3XWPQeN3B05Egr7oxg7XEd+
         uNelGqZ8ny+BsZsIgav/LJXZpCmkmSDq3facI/JYSK1AXYiHr+6RJLTPpt8CvAqA61Gh
         vSanNSJB0B5sikiYLl9ACBNCQ9yi/kUUfIeD9gUbcwpWdvvyjvXRxf8aWLKdSRUJjVpb
         FnyQ2IJZUPyu0ztI7Gfmxdf5hOv59ZTXDCbuNdGLrQT0/Y2TpcpOj8OUo8s9ZusEfLbm
         tWJm13CvjfXV5TRtWig+r6W3MLgwzZvMsPBOSimv4rHiS37qQa880ZpKIqOqz2E8U7YM
         rC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765320753; x=1765925553;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vw3eepaFtTiYpjknw5gqkL1uvwE3sqy8AP9FrVBEBIs=;
        b=uMIKHaIloA69AwBQIunaCMInxJLoEMstEENDa/+2kYok7LnSpQkMNeLZhU87Cg7f9l
         R37Y+11onvLKPuSWcfUARanvRZoHZb0eoIV1Vs4ZMt7aKYxneIGBFcIm6FFv2y3FtpB3
         u3kny0txS6wxy4SpSUf6GLJ+qjoGVxIPAL+TqWWf20ArzK0VcSwcOpJDnB3hd+L+TbJw
         FLPnWE5uu66ZsF9L80anSIneWCXtaM6CXDR5XGlYEd37uUUzecWyWOC1J5VBHgL40zQJ
         attsqhDyHnZJLeG8iBGkY5iW0kCS/Avy2rZtCMVx5wyZCR7hJtmlCzG0PXHP5vb/aKrk
         hLHQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4X8YrPI8FkPGZDUPM4sLHdy/ocsOTX6ESaYvt04QTgVHAIEahNspvY5hkqbMxXctZ44YIcQ/hOFb+@vger.kernel.org
X-Gm-Message-State: AOJu0YxMwX4ABD9za6GcfNq1CeBBg1tWmFDmmDeDN6aWC4uJwwa2NBEe
	+xen0DabPThckqImN52vMpH6+KmTLOniP8yPQEi7w1mJZ6EV07H1MfKKUk57xrGwRW4mX6NX6wm
	Lfl+NVBVBUuH0CWuKvBNwh7DnWgKj58I5VbAsqBX8rS6P2HJGJxDkJGQPcXa2l4pV
X-Gm-Gg: ASbGnctIIE4psCB7mdUOmvMK2BJiSgkgkdA/VJJVFvv1n25MsMe8dZIMYnfJOFYos1Q
	Z3U4iadWpPO24ULa5ayEkf380Q1dpa6uNd2DFAc/lTU9Y8u1K6Q5ExXwybVdIuSpT36/hB1LkeE
	1FdZp0AIaGTmuOdz0Yb3lgNyVXXU3b5hNfRjjsaDwDnYpxGuddETXUjnHNydKreZ3+2nRcNxaRE
	TVoW/UsWfo4joShB6GRboa3MdJKjn9UIF2CxxvR2dMz1ogPMzm95ojK4Cvk3HYWaPSuNMp+1t7L
	veS9pjRWH4GuEAWuBKW0ZHxGEsrY28GOR3q7cToJZIDTT/PKOAhhoYt0vLp6W6f52rVTYb+68Os
	dxwDqga4MIOXE8R2yzjYZce3i4sGyRCoHg7AKEsQ/jlHbVt0lv+Xwm7Bt/lhhdXC01TMBIgHL7B
	EdXOIZFwdQTsJyW5RMunpiG10=
X-Received: by 2002:a05:622a:8388:b0:4ee:16a8:dcf with SMTP id d75a77b69052e-4f1b1a7dbe5mr3900081cf.46.1765320752884;
        Tue, 09 Dec 2025 14:52:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkGvpFIuZ4h8q9ad8r80zo6A4P8mFzYpKEdgdJKsvZ5JJ9CTGMl2MYitE7FZWqI7F5OOE5sQ==
X-Received: by 2002:a05:622a:8388:b0:4ee:16a8:dcf with SMTP id d75a77b69052e-4f1b1a7dbe5mr3899931cf.46.1765320752416;
        Tue, 09 Dec 2025 14:52:32 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c281b7sm5487519e87.80.2025.12.09.14.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 14:52:31 -0800 (PST)
Date: Wed, 10 Dec 2025 00:52:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
Cc: kpallavi@qti.qualcomm.com, srini@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_bkumar@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, linux-kernel@vger.kernel.org,
        quic_chennak@quicinc.com, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        ktadakam@qti.qualcomm.com
Subject: Re: [PATCH v5 3/4] misc: fastrpc: Add support for new DSP IOVA
 formatting
Message-ID: <ro7g7m42ostyc5xirx53zp7fvyobzr6zfm3huy5thlf6kwocmo@etqhbev43nfk>
References: <20251202060628.1869967-1-kumari.pallavi@oss.qualcomm.com>
 <20251202060628.1869967-4-kumari.pallavi@oss.qualcomm.com>
 <mlyaklczl4ngeckk7nle2xwmmzmqlphi6d47octomc5tewohh7@ipc2ik3kqj6q>
 <18c6b95a-961d-4544-856d-7dc08f7d5d74@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <18c6b95a-961d-4544-856d-7dc08f7d5d74@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=d7X4CBjE c=1 sm=1 tr=0 ts=6938a831 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=07XtER_QmKxSY4CyyCsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE3OCBTYWx0ZWRfX1s3JP183puR0
 zNUtyQ8Gp3xlz7FOcltzNQMPtXUssbDUlPnfn4pqw7M3iOIr0RT+TDuJTOm7hPDTY2JNzKURvnS
 RMYvL5x4GoxExcEBwP7Gg476E9fYg5brNMlp92H4gxun28xa5hMq+ldJdbVv7/Cf52FfqWWo1Zl
 IU4CgIZd7ijRsOsCbv97dwgrrgc6MzaIO5DUgYNy3ix0tDU2ZONFGb49MTO+VDIXkmzILF5lkdK
 D6CD/RRFHPWmXYy5ulbxPCmCJp8GEXnZjNXpmj6FWes7UIeCiXX0k4UZ5a90AhHAsMnhWhiwLQs
 +hgyr8CY2VbKXGkvB/VZD3ufLszl2fURD4hRVZ/bH46wFDDLc9A6RX3tW6oZr8UgXEJ0mOt3lIH
 dvlH2AeR45xHvLtK4CygFTjWjxW3cw==
X-Proofpoint-GUID: 9rgyckfkAryroDjGcmFNqeNQuG8uiKhh
X-Proofpoint-ORIG-GUID: 9rgyckfkAryroDjGcmFNqeNQuG8uiKhh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090178

On Mon, Dec 08, 2025 at 12:56:18PM +0530, Kumari Pallavi wrote:
> 
> 
> On 12/6/2025 8:00 AM, Dmitry Baryshkov wrote:
> > On Tue, Dec 02, 2025 at 11:36:27AM +0530, Kumari Pallavi wrote:
> > > Implement the new IOVA formatting required by the DSP architecture change
> > > on Kaanapali SoC. Place the SID for DSP DMA transactions at bit 56 in the
> > > physical address. This placement is necessary for the DSPs to correctly
> > > identify streams and operate as intended.
> > > To address this, set SID position to bit 56 via OF matching on the fastrpc
> > > node; otherwise, default to legacy 32-bit placement.
> > > This change ensures consistent SID placement across DSPs.
> > > 
> > > Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
> > > ---
> > >   drivers/misc/fastrpc.c | 48 ++++++++++++++++++++++++++++++++++++------
> > >   1 file changed, 41 insertions(+), 7 deletions(-)
> > > 
> > > @@ -789,7 +807,8 @@ static int fastrpc_map_attach(struct fastrpc_user *fl, int fd,
> > >   		map->dma_addr = sg_phys(map->table->sgl);
> > >   	} else {
> > >   		map->dma_addr = sg_dma_address(map->table->sgl);
> > > -		map->dma_addr += ((u64)fl->sctx->sid << 32);
> > > +		map->dma_addr += fastrpc_compute_sid_offset((u64)fl->sctx->sid,
> > 
> > Drop type conversion. Hmm. Looking at it, would it be better:
> > 
> > map->dma_addr = fastrpc_compute_dma_addr(fl->sctx, sg_dma_address(map->table->sgl))
> > 
> 
> Thanks for the suggestion. To confirm: you’re proposing that the call site
> use a single helper returning the final DMA address, i.e.
> 
> map->dma_addr = fastrpc_compute_dma_addr(fl,
>                                          sg_dma_address(map->table->sgl));
> I can implement fastrpc_compute_dma_addr() as a thin wrapper that internally
> calls our existing fastrpc_compute_sid_offset() and composes the
> consolidated IOVA (SID in upper bits, base DMA/PA in lower bits)
> ?

Yes

> 
> 
> > > +				 fl->cctx->soc_data->sid_pos);
> > >   	}
> > >   	for_each_sg(map->table->sgl, sgl, map->table->nents,
> > >   		sgl_index)

-- 
With best wishes
Dmitry

